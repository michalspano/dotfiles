return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- frozen, but the `main` rewrite needs Neovim 0.12+
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        -- latex is left out on purpose: vimtex's own highlighting is better
        ensure_installed = {
            "bash", "c", "elm", "haskell", "javascript", "lua", "markdown",
            "markdown_inline", "python", "query", "tsx", "typescript", "vim", "vimdoc",
        },
        highlight = { enable = true },
        indent    = { enable = true },
    },
}
