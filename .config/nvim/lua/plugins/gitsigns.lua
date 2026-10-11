return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(buf)
      local gs = require("gitsigns")
      local function map(lhs, rhs, desc)
        vim.keymap.set("n", lhs, rhs, { buffer = buf, desc = desc })
      end
      map("]g", function() gs.nav_hunk("next") end, "Next hunk")
      map("[g", function() gs.nav_hunk("prev") end, "Previous hunk")
      map("<leader>gp", gs.preview_hunk,       "Preview current hunk")
      map("<leader>gs", gs.stage_hunk,         "Stage/unstage current hunk")
      map("<leader>gr", gs.reset_hunk,         "Reset current hunk")
      map("<leader>gS", gs.stage_buffer,       "Stage all hunks")
      map("<leader>gU", gs.reset_buffer_index, "Unstage all hunks")
      map("<leader>gR", gs.reset_buffer,       "Reset all hunks")
    end,
  },
}
