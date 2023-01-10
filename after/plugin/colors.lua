function ColorMyPencils(color, italic)
    color = color or "gruvbox"
    italic = italic or true

    vim.g.gruvbox_italic = italic
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
