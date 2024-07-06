-- gruvbox configuration
require("gruvbox").setup({
	--    terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = true,
})

function Colour(colour)
	colour = colour or "default"

	vim.cmd.colorscheme(colour)

	-- set tabline colours
	vim.cmd [[hi TabLineFill guibg=none guifg=#504945]]
	vim.cmd[[hi TabLineSel guibg=none, guifg=ebdbb2]]
end

Colour("gruvbox")
