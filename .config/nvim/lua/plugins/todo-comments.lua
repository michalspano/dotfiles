return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = { },
  keys = {
    { "<leader>dt", "<Cmd>TodoFzfLua<CR>", desc = "Search TODOs" },
  },
}
