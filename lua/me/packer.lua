return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'OmniSharp/omnisharp-vim'
    use 'ThePrimeagen/harpoon'
    use 'tpope/vim-fugitive'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'ray-x/lsp_signature.nvim'
    use 'williamboman/mason.nvim'

    use 'jiangmiao/auto-pairs'
    use 'matze/vim-move'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'preservim/tagbar'
    use 'preservim/nerdtree'
    use 'folke/trouble.nvim'
    use 'mbbill/undotree'

    use 'habamax/vim-godot'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'pbrisbin/vim-colors-off'
    use 'chriskempson/base16-vim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'Lokaltog/vim-monotone'
    use 'sainnhe/everforest'
    use 'morhetz/gruvbox'
    use 'huyvohcmc/atlas.vim'
    use 'nvim-treesitter/nvim-treesitter'
    use {'akinsho/bufferline.nvim', tag = "v3.*"}
    use 'martinsione/darkplus.nvim'
    use 'lewis6991/gitsigns.nvim'

    use 'j-hui/fidget.nvim'

    use 'preservim/vim-pencil'
end)
