require("jdtls").start_or_attach({
    cmd = { vim.fn.expand("~/.local/share/nvim/mason/packages/jdtls/bin/jdtls") },
    root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", "mvnw" }, { upward = true })[1]),
    init_options = {
        bundles = {
            vim.fn.glob("~/.local/share/nvim/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar", 1)
        }
    }
})
