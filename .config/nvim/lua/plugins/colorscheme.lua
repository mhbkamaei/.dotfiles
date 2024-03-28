return {

  {
    "catppuccin/nvim",
    lazy = false,
    priority = 10000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- disables setting the background color.
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
