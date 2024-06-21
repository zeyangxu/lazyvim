return {
  "L3MON4D3/LuaSnip",
  opts = function()
    local ls = require("luasnip")
    local snip = ls.snippet
    local text = ls.text_node
    local insert = ls.insert_node
    ls.add_snippets(nil, {
      typescript = {
        snip({
          trig = "unilog",
          namr = "Unilog",
          dscr = "Console log with unicorn emoji",
        }, {
          text({ "console.log('🦄 [" }),
          insert(1, "module"),
          text({ "] " }),
          insert(2, "item"),
          text({ "', " }),
          insert(3),
          text({ ")" }),
        }),
      },
    })

    ls.filetype_extend("typescriptreact", { "typescript" })
  end,
}
