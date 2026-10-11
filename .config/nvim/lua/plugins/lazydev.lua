-- Not a dependency of nvim-lspconfig: dependencies load with their parent,
-- which would defeat `ft = "lua"`
return {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
          {
              path = "${3rd}/luv/library", words = { "vim%.uv" }
          }
        }
    }
}
