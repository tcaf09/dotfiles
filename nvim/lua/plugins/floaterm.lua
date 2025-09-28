return {
	"voldikss/vim-floaterm",
	vim.keymap.set("n", "<leader>t", ":FloatermToggle<CR>", { silent = true }),
	vim.keymap.set("t", "<leader>t", "<C-\\><C-n>:FloatermToggle<CR>", { silent = true }),
}
