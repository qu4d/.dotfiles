return {
  "williamboman/mason.nvim",
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
}
