return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Expert: official Elixir LSP (replaces ElixirLS from the elixir extra)
      opts.servers = opts.servers or {}
      opts.servers.elixirls = { enabled = false }
      opts.servers.expert = {
        mason = false,
        cmd = { vim.fn.stdpath("data") .. "/mason/bin/expert", "--stdio" },
        filetypes = { "elixir", "eelixir", "heex" },
        root_markers = { "mix.exs", ".git" },
      }

      return opts
    end,
  },
  -- Tailwind: remove Elixir filetypes (runs after the tailwind extra merges)
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        tailwindcss = function(_, server_opts)
          server_opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains({ "elixir", "eelixir", "heex" }, ft)
          end, server_opts.filetypes or {})
        end,
      },
    },
  },
}
