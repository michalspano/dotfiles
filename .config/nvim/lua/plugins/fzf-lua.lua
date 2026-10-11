return {
    'ibhagwan/fzf-lua',
    cmd = 'FzfLua',
    keys = {
        { '<leader>ff', '<Cmd>FzfLua files<CR>',     desc = 'Find files' },
        { '<leader>fg', '<Cmd>FzfLua live_grep<CR>', desc = 'Live grep' },
        { '<leader>fb', '<Cmd>FzfLua buffers<CR>',   desc = 'Buffers' },
        { '<leader>fh', '<Cmd>FzfLua helptags<CR>',  desc = 'Help tags' },
        { '<leader>fr', '<Cmd>FzfLua resume<CR>',    desc = 'Resume last search' },
    },
    opts = {},
    init = function()
        -- Use fzf-lua for vim.ui.select (code actions etc.), loading it on first use
        vim.ui.select = function(...)
            require('fzf-lua').register_ui_select()
            return vim.ui.select(...)
        end
    end,
}
