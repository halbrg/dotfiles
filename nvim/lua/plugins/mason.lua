return {
    { "williamboman/mason.nvim", config = true },

    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
              "rust_analyzer",
              "jdtls"
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
