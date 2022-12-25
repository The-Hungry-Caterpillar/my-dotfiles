-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  -- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

  -- Syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Buffer navigation
  use('theprimeagen/harpoon')

  -- Keep undos in a tree, like git
  use('mbbill/undotree')

  -- Git interface
  use('tpope/vim-fugitive')

  --  R REPL
  use('jalvesaq/Nvim-R')

  -- RMarkdown
  use{
    'vim-pandoc/vim-rmarkdown', 
    requires = {
      {'vim-pandoc/vim-pandoc'},
      {'vim-pandoc/vim-pandoc-syntax'},
    }
  }

  -- LSP; autocomplete
  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        -- Autocompletion
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
    }

-- Dark and colorful themes ---------------------------------------------------
--  -- Rose-pine color scheme
--  use({
--      'rose-pine/neovim',
--      as = 'rose-pine',
--      config = function()
--          vim.cmd('colorscheme rose-pine')
--          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--      end
--  })

--  -- ayu  
--  use({
--      'ayu-theme/ayu-vim',
--      as = 'ayu',
--      config = function()
--          vim.cmd('colorscheme ayu')
--          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--      end
--  })

  -- tokyo night  
  use({
      'ghifarit53/tokyonight-vim',
      as = 'tokyonight',
      config = function()
          vim.cmd('colorscheme tokyonight')
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      end
  })

-- Earthy themes --------------------------------------------------------------
  -- melange  
--  use({
--      'savq/melange',
--      as = 'melange',
--      config = function()
--          vim.cmd('colorscheme melange')
--          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--      end
--  })

--  -- gruvbox material
--  use({
--      'sainnhe/gruvbox-material',
--      as = 'gruvbox-material',
--      config = function()
--          vim.cmd('colorscheme gruvbox-material')
--          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--      end
--  })

end)
