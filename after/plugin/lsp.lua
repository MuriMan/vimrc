vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method('textDocument/completion') then
			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
			local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})

vim.lsp.config("ccls", {
	cmd = { "ccls" },
	root_dir = (function()
		-- 1. Try to find project markers
		local markers = { "compile_commands.json", ".ccls", ".git" }
		local found = vim.fs.find(markers, { upward = true })[1]

		if found then
			return vim.fs.dirname(found)
		end

		-- 2. Fallback: Use the directory of the current file
		return vim.fs.dirname(vim.api.nvim_buf_get_name(0))
	end)(),
})
vim.lsp.enable({
	"lua_ls", "csharp_ls", "ccls", "tinymist"
})
