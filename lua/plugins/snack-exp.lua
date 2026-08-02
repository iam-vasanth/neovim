return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      replace_netrw = true,
      trash = true,
    },

    picker = {
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          ignored = true,
          follow_file = true,
          git_status = true,
          diagnostics = true,

          layout = {
            preset = "sidebar",
            preview = false,          -- Toggle with P to preview
          },

          win = {
            list = {
              keys = {
                ["<leader>e"] = "close",
              },
            },
          },
        },
      },
    },
  },

  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer",
    },
    {
      "<leader>E",
      function()
        Snacks.explorer.reveal()
      end,
      desc = "Reveal current file",
    },
  },
}
