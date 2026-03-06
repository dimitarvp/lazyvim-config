return {
  -- Code action preview with diff view
  {
    "aznhe21/actions-preview.nvim",
    event = "LspAttach",
    keys = {
      {
        "<leader>ca",
        function() require("actions-preview").code_actions() end,
        desc = "Code Action Preview",
        mode = { "n", "v" },
      },
    },
  },

  -- Trailing whitespace highlighting (lazy-loaded to avoid dashboard red bars)
  {
    "ntpeters/vim-better-whitespace",
    event = { "BufReadPre", "BufNewFile" },
    init = function()
      vim.g.better_whitespace_filetypes_blacklist = {
        "diff", "git", "gitcommit", "unite", "qf", "help", "markdown", "fugitive",
        "snacks_dashboard", "snacks_notif", "snacks_terminal", "snacks_win",
        "lazy", "mason", "neo-tree",
      }
    end,
  },

  -- Rainbow bracket matching
  {
    "hiphish/rainbow-delimiters.nvim",
    event = { "BufReadPre", "BufNewFile" },
  },

  -- Scope buffers to tabs
  { "tiagovla/scope.nvim", event = "VeryLazy", config = true },

  -- Floating diagnostics at cursor
  { "dgagn/diagflow.nvim", event = "LspAttach", config = true },

  -- Go to previous edit locations
  {
    "bloznelis/before.nvim",
    event = "VeryLazy",
    config = true,
    keys = {
      { "gB", function() require("before").jump_to_last_edit() end, desc = "Previous edit location" },
    },
  },

  -- Surround text objects
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = true,
  },
}
