vim.g.mapleader = " "

-- file navigation
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {})
vim.keymap.set("n", "<leader>fe", "<CMD> :Ex <CR>", {})
vim.keymap.set("n", "<leader>ft", "<CMD> :NvimTreeToggle <CR>", {})

-- splits
vim.keymap.set("n", "<leader>vs", "<CMD> :vs <CR>", {})
vim.keymap.set("n", "<leader>hs", "<CMD> :split <CR>", {})

-- redo
vim.keymap.set("n", "U", "<C-r>", {})

-- trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- tab navigation
vim.keymap.set("n", "<Tab>", "<CMD> :tabnext <CR>", {})
vim.keymap.set("n", "<S-Tab>", "<CMD> :tabprev <CR>", {})
vim.keymap.set("n", "<leader>tn", "<CMD> :tabnew <CR>", {})
vim.keymap.set("n", "<leader>tc", "<CMD> :tabclose <CR>", {})
vim.keymap.set("n", "<leader>tr", " :TabooRename ", {})

-- terminal mode
vim.keymap.set("t", "<Esc>", [[ <C-\><C-n> ]], {})

-- ctrl+backspace
vim.keymap.set("i", "<C-BS>", "<C-w>", {})

-- something to do with braces and tabbing
vim.keymap.set("i", "{<enter>", "{<esc>o", {})
