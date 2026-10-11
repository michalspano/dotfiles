return {
    'xiyaowong/transparent.nvim',
    lazy = false, -- restores the saved transparency state at startup
    keys = {
        { '<leader><C-t>', '<Cmd>TransparentToggle<CR>', desc = 'Toggle transparency window mode' },
    },
}
