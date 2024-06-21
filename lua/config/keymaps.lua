-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- use jk to exit insert mode
map("i", "jk", "<ESC>")

-- clear search highlights
map("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
map("n", "x", '"_x')

-- terminal
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
map("n", "<c-t>", lazyterm, { desc = "Terminal (Root Dir)" })
map("t", "<C-t>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- buffers
map("n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>")
map("n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>")
map("n", "<leader>bx", "<cmd>BufferLineCloseOthers<cr>")

-- window management
map("n", "<leader>wv", "<C-w>v", { desc = "Split Window Below", remap = true })
map("n", "<leader>wh", "<C-w>s", { desc = "Split Window Right", remap = true })
map("n", "<leader>wc", "<C-w>c", { desc = "Close Current Window", remap = true })
map("n", "<leader>we", "<C-w>=", { desc = "Make Split Windows Equal Width & Height", remap = true })
