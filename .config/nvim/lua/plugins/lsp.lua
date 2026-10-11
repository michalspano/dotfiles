-- Have a look here
-- https://github.com/viktomas/dotfiles/blob/6ec1561e0c1f45903e6e1196ee2e8224c3f3c879/nvim/.config/nvim/lua/custom/plugins/lsp.lua#L64C4-L87
return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Diagnostics start hidden; the toggle shows signs, underline and
        -- the current line's messages (virtual lines) together
        vim.diagnostic.config({
            virtual_lines = { current_line = true },
            severity_sort = true,
        })
        vim.diagnostic.enable(false)

        vim.keymap.set("n", "<leader>dd", function()
            vim.diagnostic.enable(not vim.diagnostic.is_enabled())
        end, { desc = "Toggle diagnostics" })

        local function rename()
            -- when rename opens the prompt, this autocommand will trigger
            -- it will "press" CTRL-F to enter the command-line window `:h cmdwin`
            -- in this window I can use normal mode keybindings
            local cmdId
            cmdId = vim.api.nvim_create_autocmd({ "CmdlineEnter" }, {
                callback = function()
                    local key = vim.api.nvim_replace_termcodes("<C-f>", true, false, true)
                    vim.api.nvim_feedkeys(key, "c", false)
                    vim.api.nvim_feedkeys("0", "n", false)
                    -- autocmd was triggered and so we can remove the ID and return true to delete the autocmd
                    cmdId = nil
                    return true
                end,
            })
            vim.lsp.buf.rename()
            -- if LSP couldn't trigger rename on the symbol, clear the autocmd
            vim.defer_fn(function()
                -- the cmdId is not nil only if the LSP failed to rename
                if cmdId then
                    vim.api.nvim_del_autocmd(cmdId)
                end
            end, 500)
        end

        -- Neovim already maps K, grn, gra, grr, gri, gO, [d, ]d and <C-s> (insert mode)
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(ev)
                local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
                local function map(lhs, rhs, desc)
                    vim.keymap.set("n", lhs, rhs, { buffer = ev.buf, desc = desc })
                end
                map("gd", vim.lsp.buf.definition,      "Go to definition")
                map("gD", vim.lsp.buf.declaration,     "Go to declaration")
                map("gy", vim.lsp.buf.type_definition, "Go to type definition")
                map("<leader>r", rename,               "Rename symbol")

                if client:supports_method("textDocument/completion") then
                    vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
                end
            end,
        })

        vim.lsp.enable({ 'lua_ls', 'hls', 'ts_ls', 'clangd', 'pyright', 'elmls', 'bashls' })
    end
}
