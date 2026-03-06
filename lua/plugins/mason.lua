-- Extra tools beyond what language extras install
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP servers
        "cssmodules-language-server",
        "earthlyls",
        "expert",
        "lemminx",
        "vim-language-server",
        "zk",
        "zls",
        -- Formatters & linters
        "biome",
        "htmlhint",
        "nilaway",
        "prettier",
        "rubocop",
        "ruff",
        "shellcheck",
        "shellharden",
        "sqlfluff",
        "standardjs",
        "staticcheck",
        "systemdlint",
        "tflint",
        "tfsec",
        "trivy",
        "vacuum",
        "yamllint",
      },
    },
  },
}
