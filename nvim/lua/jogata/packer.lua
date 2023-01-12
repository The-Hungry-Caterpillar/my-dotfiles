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

    ---- Syntax highlighting
    --use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Buffer navigation
    use('theprimeagen/harpoon')

    -- Really nice indentation guide
    use('lukas-reineke/indent-blankline.nvim')

    -- Dim inactive windows
    use('sunjon/shade.nvim')

    -- Sweet bookmarks
    use('chentoast/marks.nvim')

    -- Git interface, super fancy
    use('tpope/vim-fugitive')

    -- Lua status line, basic
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Vim slime, general REPL
    use('jpalardy/vim-slime')

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
    -- base16
    use({
        'RRethy/nvim-base16',
        as = 'base16',
        config = function()
            --vim.cmd('colorscheme base16-dirtysea') -- REALLY good light theme
            --vim.cmd('colorscheme base16-solarized-light')
            --vim.cmd('colorscheme base16-vulcan') -- REALLY nice dark navy theme
            --vim.cmd('colorscheme base16-everforest') -- nice earthy theme
            --vim.cmd('colorscheme base16-irblack') -- high contrast dark; really cool
            vim.cmd('colorscheme base16-onedark') -- high contrast dark; really cool
            --vim.cmd('colorscheme base16-atelier-plateau') -- nice doo doo brown
            --vim.cmd('colorscheme base16-atelier-heath') -- like plateau, but with cool hightlight
            --vim.cmd('colorscheme base16-stella') -- bearable purple
            --vim.cmd('colorscheme base16-tokyodark') -- dark, purply
            --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
     })

end)

--  -- one dark
--  use({
--      'joshdick/onedark.vim',
--      as = 'onedark',
--      config = function()
--          vim.cmd('colorscheme onedark')
--      end
--  })


--  -- Calvera; dark and purple
--  use({
--      'hoppercomplex/calvera-dark.nvim',
--      as = 'calvera',
--      config = function()
--          vim.cmd('colorscheme calvera') 
--      end
--  })


--  -- tokyo night  
--  use({
--        'ghifarit53/tokyonight-vim',
--        as = 'tokyonight',
--        config = function()
--            vim.cmd('colorscheme tokyonight')
--            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--        end
--    })

--  -- Rose-pine color scheme
--  use({
--      'rose-pine/neovim',
--      as = 'rose-pine',
--      config = function()
--          require('rose-pine').setup({
--              dark_variant = 'moon'
--          })
--          vim.o.background = 'light'
--          vim.cmd('colorscheme rose-pine')
--          --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--          --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--      end
--  })

---- Keep undos in a tree, like git
--use('mbbill/undotree')

