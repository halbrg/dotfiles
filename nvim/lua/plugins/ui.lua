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
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        options = {
            separator_style = "slant"
        }
    }
  }
}
