return {
    { "mrcjkb/rustaceanvim" },
    { "mfussenegger/nvim-jdtls" },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup_handlers({
                function(server)
                    lspconfig[server].setup({})
                end,
                ["rust_analyzer"] = function() end,
                ["jdtls"] = function() end
            })
        end
    },
}
