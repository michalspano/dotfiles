return {
    'navarasu/onedark.nvim',
    priority = 1000, -- load before other plugins
    config = function()
        require('onedark').setup { style = 'cool' }
        require('onedark').load()
    end
}
