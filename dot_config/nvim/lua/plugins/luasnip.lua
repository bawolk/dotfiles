return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
  config = function()
    require("luasnip.loaders.from_lua").load({ paths = { "./lua/luasnippets" } })
    require("luasnip").config.setup({
      update_events = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })
  end,
}
