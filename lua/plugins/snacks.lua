return {
  {
    "folke/snacks.nvim",
    opts = {
      -- Rainbow-colored indent guides
      indent = {
        indent = {
          char = "│",
          hl = {
            "SnacksIndent1",
            "SnacksIndent2",
            "SnacksIndent3",
            "SnacksIndent4",
            "SnacksIndent5",
            "SnacksIndent6",
            "SnacksIndent7",
            "SnacksIndent8",
          },
        },
        scope = { enabled = true },
        chunk = { enabled = false },
        filter = function(buf)
          return vim.g.snacks_indent ~= false
            and vim.b[buf].snacks_indent ~= false
            and vim.bo[buf].buftype == ""
            and vim.bo[buf].filetype ~= "snacks_dashboard"
        end,
      },
      -- Fullscreen picker with visible borders
      picker = {
        layout = {
          cycle = false,
          layout = {
            width = 0,
            height = function()
              return vim.o.lines - vim.o.cmdheight - 3
            end,
          },
        },
        win = {
          input = {
            keys = {
              ["<PageUp>"] = { "list_scroll_up", mode = { "i", "n" } },
              ["<PageDown>"] = { "list_scroll_down", mode = { "i", "n" } },
              ["<C-d>"] = { "bufdelete", mode = { "i", "n" } },
            },
          },
        },
      },
    },
  },
}
