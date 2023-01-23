vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "<leader>mi", ":Mason<CR>")

vim.keymap.set("n", "<leader>K", ":lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>")
vim.keymap.set("n", "<leader>hs", ":split<CR>")

vim.keymap.set("n", "<leader>nt", ":tabnew<CR>")
vim.keymap.set("n", "<leader>ct", ":bunload<CR>")
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")
