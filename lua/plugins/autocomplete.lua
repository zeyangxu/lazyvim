return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_)
      local cmp = require("cmp")
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
          ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),
          ["<C-d>"] = cmp.mapping.scroll_docs(4),
          ["<Tab>"] = LazyVim.cmp.confirm({ select = false }),
        }),
      })
    end,
  },
}
