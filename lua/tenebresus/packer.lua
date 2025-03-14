--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "EdenEast/nightfox.nvim" -- Packer

  use "sainnhe/gruvbox-material"

  use "tiagovla/tokyodark.nvim"

  use "scottmckendry/cyberdream.nvim"

  use {
    'folke/lazydev.nvim',
    config = function()
      -- Put your lazy.nvim configuration here
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      }
    end
  }


  use "catppuccin/nvim"

--  use ({ "catppuccin/nvim", 
--  as = "catppuccin",
--
--  config = function() 
--
--	  vim.cmd('colorscheme catppuccin')
--  end
--
--  })
  use "dgox16/oldworld.nvim"
  use ('m4xshen/autoclose.nvim')
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  use ('feline-nvim/feline.nvim')
  use ('lewis6991/gitsigns.nvim')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
end)
