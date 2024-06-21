return {
  "stevearc/conform.nvim",
  opts = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        -- Use a sub-list to run only the first available formatter
        javascript = { { "prettierd", "prettier" } },
      },
    })
  end,
}
