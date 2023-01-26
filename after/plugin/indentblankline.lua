vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#CC241D gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#98971A gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#D79921 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#458588 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#B16286 gui=nocombine]]

vim.opt.list = true

require("indent_blankline").setup {
    -- show_current_context = true,
    -- show_current_context_start = true,
    -- char = "┊",
    -- space_char_blankline = " ",

    -- char_highlight_list = {
    --     "IndentBlanklineIndent1",
    --     "IndentBlanklineIndent2",
    --     "IndentBlanklineIndent3",
    --     "IndentBlanklineIndent4",
    --     "IndentBlanklineIndent5",
    -- },
}

