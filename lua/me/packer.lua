vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	-- visuals
	use "ellisonleao/gruvbox.nvim"
	use "vim-airline/vim-airline"
	use "vim-airline/vim-airline-themes"
	use "nvim-treesitter/nvim-treesitter"
	use "lukas-reineke/indent-blankline.nvim"
	use "folke/zen-mode.nvim"
	use "fladson/vim-kitty"

	-- quality of life
	use {
		"nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } }
	}
	use "tpope/vim-surround"
	use "tomtom/tcomment_vim"
	use "preservim/tagbar"
	use "gcmt/taboo.vim"

	-- general functionality
	use "mkitt/tabline.vim"
	use "folke/trouble.nvim"

	-- pdf
	use { "lervag/vimtex" }

	-- lsp functionality
	use "neovim/nvim-lspconfig"
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "ray-x/lsp_signature.nvim"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use "L3MON4D3/LuaSnip"
end)
