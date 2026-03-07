return {
  -- Search count in statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, {
        function()
          if vim.v.hlsearch == 0 then return "" end
          local ok, result = pcall(vim.fn.searchcount, { maxcount = 9999, recompute = 1 })
          if ok and result.total > 0 then
            return string.format("🔍 %d/%d", result.current, result.total)
          end
          return ""
        end,
      })

      -- Add ◆ separator between progress and location
      opts.sections.lualine_y = {
        { "progress", separator = "", padding = { left = 1, right = 0 } },
        { function() return " ●" end, padding = 0, separator = "" },
        "location",
      }

      -- Replace clock with active LSP server name
      opts.sections.lualine_z = {
        {
          function()
            local clients = vim.lsp.get_clients({ bufnr = 0 })
            if #clients == 0 then return "" end
            local names = {}
            for _, client in ipairs(clients) do
              table.insert(names, client.name)
            end
            return table.concat(names, ", ")
          end,
          icon = "⚙",
        },
      }
    end,
  },

  -- Color preview in code (#hex, rgb(), hsl())
  { "brenoprata10/nvim-highlight-colors", event = "VeryLazy", config = true },

  -- Heading highlights in markdown/org
  {
    "lukas-reineke/headlines.nvim",
    ft = { "markdown", "norg", "org" },
    config = true,
  },

  -- Dim inactive code (toggle with :Twilight)
  { "folke/twilight.nvim", cmd = "Twilight", config = true },
}
