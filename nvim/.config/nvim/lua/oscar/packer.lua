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
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  --Plugin: Theme rose-pine
  --use({ 
	--  "rose-pine/neovim",
	  --as = "rose-pine",
	  --config = function()
	--	  vim.cmd('colorscheme rose-pine')
	  --end
  --})
  --Plugin: cattpuccin 
  use { "catppuccin/nvim", as = "catppuccin" }

  --Plugin: Treesitter
  use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
  --Plugin:Treesitter playground
  use('nvim-treesitter/playground')
  --Plugin: Undo-tree
  use('mbbill/undotree')

  --Plugin: LSP-zero
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  --Plugin: Mason
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }
  
  --Plugin: Autopair
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use("rafamadriz/friendly-snippets")

  use('ThePrimeagen/vim-be-good')
  use('junegunn/fzf')
  use('junegunn/fzf.vim')

 end)
