-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- local Util = require("lazyvim.util")
--
-- -- change lazygit to gitui
-- vim.keymap.set("n", "<leader>gg", function()
--   Util.terminal({ "gitui" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
-- end, { desc = "gitui (root dir)" })
-- vim.keymap.set("n", "<leader>gG", function()
--   Util.terminal({ "gitui" }, { esc_esc = false, ctrl_hjkl = false })
-- end, { desc = "gitui (cwd)" })

local wk = require("which-key")

wk.add({
  { "<leader>d", group = "crates" },
  { "<leader>dU", "<cmd>Crates upgrade_crate<cr>", desc = "Upgrade Crate" },
  { "<leader>du", "<cmd>Crates update_crate<cr>", desc = "Update Crate" },
  { "<leader>dv", "<cmd>Crates show_versions_popup<cr>", desc = "Show Versions" },
})

-- Fixes pasting after visual selection.
vim.keymap.set("v", "p", "P")
