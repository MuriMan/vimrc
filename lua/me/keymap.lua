vim.g.mapleader = " "

-- file navigation
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>")
vim.keymap.set("n", "<leader>fe", ":Oil<CR>")

-- splits
vim.keymap.set("n", "<leader>vs", "<CMD> :vs <CR>", {})
vim.keymap.set("n", "<leader>hs", "<CMD> :split <CR>", {})

-- redo
vim.keymap.set("n", "U", "<C-r>", {})

-- lsp
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

-- lsp
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- This helps maintain the completion menu state when backspacing
vim.keymap.set('i', '<BS>', function()
    if vim.fn.pumvisible() == 1 then
        -- If the menu is open, we send backspace but stay in completion mode
        return "<BS><C-x><C-o>"
    else
        return "<BS>"
    end
end, { expr = true, replace_keycodes = true })
