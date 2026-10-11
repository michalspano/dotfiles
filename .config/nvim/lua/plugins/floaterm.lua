return {
    'voldikss/vim-floaterm',
    cmd = { 'FloatermToggle', 'FloatermNew' },
    keys = {
        { '<C-p>', '<Cmd>FloatermToggle<CR>',             desc = 'Toggle floaterm' },
        { '<C-p>', '<C-\\><C-n><Cmd>FloatermToggle<CR>', mode = 't', desc = 'Toggle floaterm' },
    },
    init = function()
        vim.g.floaterm_width     = 0.8
        vim.g.floaterm_height    = 0.9
        vim.g.floaterm_wintype   = 'float'
        vim.g.floaterm_position  = 'center'
        vim.g.floaterm_autoinsert = false
        vim.g.floaterm_title     = 'floaterm($1|$2)'
    end,
}
