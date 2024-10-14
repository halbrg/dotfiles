return {
  { "williamboman/mason.nvim", config = true },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
          "rust_analyzer",
          "jdtls",
          "clangd"
        }
    } 
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "javadbg",
        "codelldb"
      }
    }
  }
}
