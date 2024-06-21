return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local config = require("fzf-lua.config")
    config.defaults.keymap.fzf["ctrl-l"] = "results_scrolliing_right"
  end,
  keys = {
    { "<leader>fF", LazyVim.pick("auto"), desc = "Find Files (cwd)" },
    { "<leader>ff", LazyVim.pick("auto", { root = false }), desc = "Find Files (Root Dir)" },
  },
}
