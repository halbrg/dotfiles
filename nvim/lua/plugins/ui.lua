return {
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble"
  },

  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "catppuccin"
    },
    opts = {
        options = {
            separator_style = "slant"
        },
        highlights = require("catppuccin.groups.integrations.bufferline").get()
    }
  }
}
