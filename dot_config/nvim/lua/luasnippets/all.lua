local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  s({ trig = "hi" }, { t("Hello, world!") }),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  s({ trig = "foo" }, { t("Another snippet.") }),
}
