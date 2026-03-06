return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- golines breaks long lines; goimports handles import grouping;
        -- gopls/gofumpt runs last via LSP formatting.
        -- golines is not in Mason — install with:
        --   go install github.com/golangci/golines@latest
        go = { "goimports", "golines", lsp_format = "last" },
      },
    },
  },
}
