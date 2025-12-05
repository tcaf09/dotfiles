-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Toggle Neo-tree with <leader>e
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true, })
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
