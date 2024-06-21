return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    {
      "catppuccin/nvim",
      lazy = true,
      name = "catppuccin",
    },
  },
}
