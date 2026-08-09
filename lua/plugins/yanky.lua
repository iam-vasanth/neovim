return {
  "gbprod/yanky.nvim",
  opts = {
    ring = {
      history_length = 100,
      storage = "shada",
      sync_with_numbered_registers = true,
      cancel_event = "update",
    },
    highlight = {
      on_put = true,
      on_yank = true,
      timer = 200,
    },
  },
  keys = {
    { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Put After" },
    { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Put Before" },
    { "gp", "<Plug>(YankyGPutAfter)", mode = { "n", "x" }, desc = "Put After and Leave Cursor After" },
    { "gP", "<Plug>(YankyGPutBefore)", mode = { "n", "x" }, desc = "Put Before and Leave Cursor After" },

    { "<c-n>", "<Plug>(YankyCycleForward)", desc = "Cycle Forward Through Yank History" },
    { "<c-p>", "<Plug>(YankyCycleBackward)", desc = "Cycle Backward Through Yank History" },

    { "]p", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Put Indented After Linewise" },
    { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Put Indented Before Linewise" },

    { "<leader>fy", "<cmd>Telescope yank_history<cr>", desc = "Yank History" },
  },
}
