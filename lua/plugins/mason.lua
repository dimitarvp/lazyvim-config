-- Mason's npm installs keep the fleet's install-script lock from ~/.npmrc but
-- get a one-day release age instead of the seven-day one: the Mason registry
-- pins the newest upstream release within hours, so a week never passes.
vim.env.npm_config_min_release_age = "1"

-- Extra tools beyond what language extras install
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    cmd = { "MasonToolsInstall", "MasonToolsUpdate", "MasonToolsClean" },
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
