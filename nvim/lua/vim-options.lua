vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>no", ":nohl<CR>", { silent = true})
vim.keymap.set("n", "<leader>d", function()
  vim.diagnostic.open_float(nil, { focus = false })
end)
