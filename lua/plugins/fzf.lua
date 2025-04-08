return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = function(_, opts)
    -- local config = require("fzf-lua.config")
    -- config.defaults.keymap.fzf["ctrl-l"] = "results_scrolliing_right"
  end,
  keys = {
    { "<leader>fF", LazyVim.pick("auto"), desc = "Find Files (cwd)" },
    { "<leader>ff", LazyVim.pick("auto", { root = false }), desc = "Find Files (Root Dir)" },
  },
}
