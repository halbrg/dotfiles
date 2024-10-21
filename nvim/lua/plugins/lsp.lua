return {
    { "mrcjkb/rustaceanvim" },
    { "mfussenegger/nvim-jdtls" },
    
    {
        "ranjithshegde/ccls.nvim",
        opts = {
            lsp = {
                server = {
                    name = "ccls",
                    cmd = { "/usr/bin/ccls" },
                    args = {},
                    offset_encoding = "utf-32",
                    root_dir = vim.fs.dirname(vim.fs.find({ "compile_commands.json" }, { upwards = true })[1]),
                }
            }
        }
    },

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
