vim.g.gruvbox_improved_warnings = true
vim.g.gruvbox_italic = true
vim.cmd.colorscheme("gruvbox")

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", {bg = "none"})
vim.api.nvim_set_hl(0, "Pmenu", {bg = "none"})

vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = "#928374"})
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
