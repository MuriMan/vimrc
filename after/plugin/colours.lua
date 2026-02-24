function Colour(colour)
	colour = colour or "default"

	vim.cmd.colorscheme(colour)

	vim.o.pumblend = 0

	vim.api.nvim_set_hl(0, "Normal", {bg="none"})

	vim.api.nvim_set_hl(0, "Tabline", {bg="none", fg="#504945"})
	vim.api.nvim_set_hl(0, "TablineFill", {bg="none", fg="#504945"})
	vim.api.nvim_set_hl(0, "TablineSel", {bg="none", fg="#FFFFFF", bold = true})

	vim.api.nvim_set_hl(0, "Pmenu", {bg="none"})
	vim.api.nvim_set_hl(0, "PmenuSel", {bg="none", italic = true, bold = true})

	vim.api.nvim_set_hl(0, "MiniPickNormal", {bg="none"})
	vim.api.nvim_set_hl(0, "MiniPickMatchCurrent", {bg="none", italic = true, bold = true})
	vim.api.nvim_set_hl(0, "MiniPickPrompt", {fg="#FFFFFF", bg="none", bold = true})
	vim.api.nvim_set_hl(0, "MiniPickBorderText", {bg="none"})
	vim.api.nvim_set_hl(0, "MiniPickBorderBusy", {bg="none"})
	vim.api.nvim_set_hl(0, "MiniPickMatchCurrent", {fg="#FFFFFF", bold = true})
	vim.api.nvim_set_hl(0, "MiniPickMatchRanges", {fg="#FFFFFF", bold = true})

	vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})

	vim.api.nvim_set_hl(0, "LineNr", {bg="none", bold = true, italic = true})
	vim.api.nvim_set_hl(0, "LineNrAbove", {bg="none", bold = false})
	vim.api.nvim_set_hl(0, "LineNrBelow", {bg="none", bold = false})

	vim.api.nvim_set_hl(0, "StatusLine", {bg="none", fg="#FFFFFF"})
	vim.api.nvim_set_hl(0, "StatusLineNC", {bg="none", fg="#504945"})

	vim.api.nvim_set_hl(0, "SignColumn", {bg="none"})

	vim.api.nvim_set_hl(0, "ColorColumn", {bg="#0A0A0A"})
end

Colour("fogbell")
