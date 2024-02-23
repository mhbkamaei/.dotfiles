return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSP
      "emmet-ls",
      "taplo",
      -- DAP
      -- Linter
      -- Formatter
      "stylua",
      "shfmt",
      "prettier",
    },
  },
}
