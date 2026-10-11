return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { "echasnovski/mini.icons" },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    keys = {
        { "-",         "<Cmd>Oil<CR>",   desc = "Open parent directory" },
        { "<leader>o", "<Cmd>Oil .<CR>", desc = "Open root directory" },
    },
}
