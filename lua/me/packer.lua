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
    use 'lukas-reineke/indent-blankline.nvim'

    use 'habamax/vim-godot'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'chriskempson/base16-vim'
    use 'Lokaltog/vim-monotone'
    use 'sainnhe/everforest'
    use 'morhetz/gruvbox'
    use 'huyvohcmc/atlas.vim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'preservim/tagbar'
    use {'akinsho/bufferline.nvim', tag = "v3.*"}

    use 'mbbill/undotree'

    use 'j-hui/fidget.nvim'
    use 'folke/trouble.nvim'
end)
