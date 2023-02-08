function TransColor(color)
    color = color or "everforest"

    vim.g.gruvbox_improved_warnings = true
    vim.g.gruvbox_italic = true

    vim.g.everforest_enable_italics = 1
    vim.g.everforest_transparent_background = 1
    vim.g.everforest_dim_inactive_windows = 1

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })

    vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
    vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = "#928374"})
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })

    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
end

function NoTransColor(color)
    color = color or "everforest"

    vim.g.gruvbox_improved_warnings = true
    vim.g.gruvbox_italic = true

    vim.g.everforest_enable_italics = 1
    vim.g.everforest_transparent_background = 1
    vim.g.everforest_dim_inactive_windows = 1

    vim.cmd.colorscheme(color)
end


TransColor()
