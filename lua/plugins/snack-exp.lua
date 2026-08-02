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
          hidden = true,            -- "H" To toggle hidden files
          ignored = true,           -- "I" To toggle gitignored files
          follow_file = true,
          git_status = true,
          diagnostics = true,

          layout = {
            preset = "sidebar",
            preview = false,        -- "P" To toggle preview
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
