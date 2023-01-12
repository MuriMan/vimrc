vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "<leader>mi", ":Mason<CR>")

vim.keymap.set("n", "<leader>K", ":lua vim.lsp.buf.hover()<CR>")
