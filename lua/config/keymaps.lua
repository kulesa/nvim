-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

-- Normal mode mappings (equivalent to nmap)
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })

-- Copied from the old config
map("n", "j", "gj")
map("n", "k", "gk")

-- To previous buffer and back
map("n", "<C-e>", ":e#<CR>", { desc = "Go to previous buffer" })

map("n", "<CR>", ":nohlsearch<CR>", { desc = "Clear selection" })

-- Insert mode mappings (equivalent to imap)
-- map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Visual mode mappings (equivalent to vmap)
-- map("v", "<", "<gv", { desc = "Indent left" })

-- You can also use vim.cmd for complex mappings:
-- vim.cmd([[
--  nnoremap <silent> <leader>ff :call SomeComplexFunction()<CR>
-- ]])
