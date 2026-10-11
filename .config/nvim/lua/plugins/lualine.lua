local config =  {
    -- Global options (for lualine)
    options = {
      theme = 'onedark', -- follows the onedark style
      globalstatus = true,
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    -- Just above the command-line palette
    sections = {
        lualine_a = { { 'mode',  right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {'progress' },
        lualine_z = { { 'location',  left_padding = 2 } },
    },
    -- Tabline section (atop the window)
    tabline = {
        lualine_a = { 'buffers' },
        lualine_z = { 'tabs' }
    },
}

return {
    'nvim-lualine/lualine.nvim', -- icons come from mini.icons
    opts = config,
}
