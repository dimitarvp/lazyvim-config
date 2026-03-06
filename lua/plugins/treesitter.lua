-- Extra parsers beyond what language extras install
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "c_sharp",
        "csv",
        "diff",
        "dot",
        "git_config",
        "gitignore",
        "just",
        "make",
        "ocaml",
        "ocaml_interface",
        "php",
        "pkl",
        "proto",
        "tsv",
        "v",
        "vim",
        "zig",
      })
    end,
  },
}
