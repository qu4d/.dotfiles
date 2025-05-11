return {
  {
    "williamboman/mason.nvim",
    version = "^1.0.0",
    opts = {
      ensure_installed = {
        "debugpy",
        "delve",
        "gofumpt",
        "goimports",
        "gopls",
        "lua-language-server",
        "pyright",
        "ruff",
        "shfmt",
        "stylua",
      },
    },
  },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
