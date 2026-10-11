-- Icon provider for oil, lualine and fzf-lua; stands in for nvim-web-devicons
return {
    "echasnovski/mini.icons",
    lazy = true,
    opts = {},
    init = function()
        package.preload["nvim-web-devicons"] = function()
            require("mini.icons").mock_nvim_web_devicons()
            return package.loaded["nvim-web-devicons"]
        end
    end,
}
