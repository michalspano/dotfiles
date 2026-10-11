return {
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gread", "Gwrite" },
    keys = {
        { "<leader>gg", "<Cmd>Git<CR>",                    desc = "Open git status" },
        { "<leader>gc", "<Cmd>Git commit | startinsert<CR>", desc = "Open commit window" },
    },
}
