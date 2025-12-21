vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_method = "latexmk"

vim.g.vimtex_compiler_latexmk = {
	options = { '-pdf', '-pdflatex=lualatex', '-interaction=nonstopmode' }
}

vim.api.nvim_create_autocmd("User", {
	pattern = "VimtexEventCompileSuccess",
	callback = function()
		local qf = vim.fn.getqflist()
		local filtered = vim.tbl_filter(function(item)
			return not string.match(item.text, "Underfull") and not string.match(item.text, "Overfull")
		end, qf)
		vim.fn.setqflist(filtered, 'r')
	end,
})
