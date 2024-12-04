-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Plugin:telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --Plugin: cattpuccin
    use { "catppuccin/nvim", as = "catppuccin" }

    --Plugin: Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    --Plugin:Treesitter playground
    use('nvim-treesitter/playground')
    --Plugin: Undo-tree
    use('mbbill/undotree')
    use { 'folke/trouble.nvim', requires = 'nvim-tree/nvim-web-devicons' }


    --Plugin: LSP-zero
    --[[
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
   ]]-- 
    --Plugin: Mason & Lspconfig
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
         'hrsh7th/cmp-nvim-lsp',
         'hrsh7th/cmp-buffer',
         'hrsh7th/cmp-path',
         'hrsh7th/cmp-cmdline',
         'hrsh7th/nvim-cmp',
         'L3MON4D3/LuaSnip',
         'saadparwaiz1/cmp_luasnip',
         'j-hui/fidget.nvim'
    }

    --Plugin multi cursor
    use('mg979/vim-visual-multi')
    --Plugin surround: surround selection with any char
    use('tpope/vim-surround')
    --Plugin: Autopair
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use("rafamadriz/friendly-snippets")

    use('ThePrimeagen/vim-be-good')
    use('junegunn/fzf')
    use('junegunn/fzf.vim')

    use {
        'windwp/nvim-ts-autotag',
        config = function() require('nvim-ts-autotag').setup () end
    }
end)
