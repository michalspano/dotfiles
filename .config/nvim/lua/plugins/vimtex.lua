return {
    {
      "lervag/vimtex",
      lazy = false,
      init = function()
          -- Vimtex compiler configuration

          vim.g.vimtex_view_method = "zathura"
          vim.g.vimtex_compiler_latexmk = {
              aux_dir = './tmp',
              out_dir = './out',
              options = {
                    '-pdf',
                    '-shell-escape'
              }
          }
          vim.g.vimtex_compiler_latexmk_engines = {
                  _ = "-lualatex"
          }
          vim.g.vimtex_quickfix_ignore_filters = {
              'Underfull',
              'Overfull'
          }
      end
    }
}
