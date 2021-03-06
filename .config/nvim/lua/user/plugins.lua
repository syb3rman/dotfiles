---------------------------------------------------------
-- Plugin Managment
---------------------------------------------------------

require('packer').startup(function()
	use 'wbthomason/packer.nvim'	-- Packer can manage itself
	use 'numToStr/Comment.nvim'	-- useful for commenting stuff
	use { 'goolord/alpha-nvim', requires = { 'kyazdani42/nvim-web-devicons' } }	-- startup screen

	use 'rust-lang/rust.vim'	-- rust default settings
	use 'simrat39/rust-tools.nvim'	-- rust tools for debugging and stuff
	use 'cespare/vim-toml'	-- toml support (?)

	use 'RRethy/vim-illuminate' -- highlights
	use 'preservim/tagbar'	-- tagbar (functions, structs and stuff)
	use 'windwp/nvim-autopairs'		-- auto pairs
	use 'ahmedkhalf/project.nvim' -- project managment
	use 'rcarriga/nvim-notify' -- notification library
	use 'karb94/neoscroll.nvim' -- smooth scrolling
	use 'matbme/JABS.nvim' -- buffer switcher
	use "lukas-reineke/indent-blankline.nvim" --indentations
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	use {
		"folke/todo-comments.nvim", -- for todo comments
		requires = { "nvim-lua/plenary.nvim" }
	}

	-- File tree --
	use {
		'kyazdani42/nvim-tree.lua',	-- file explorer
		requires = {
			'kyazdani42/nvim-web-devicons' -- file icons
		},
	}

	-- impatient (speed up startup times)
	use 'lewis6991/impatient.nvim'

	-- bufferline
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

	-- terminal
	use "akinsho/toggleterm.nvim"

	-- Status Bar --
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- lsp --
	use {
		'neovim/nvim-lspconfig',		-- lsp configuration for neovim
		'williamboman/nvim-lsp-installer', -- lsp installer
		'ray-x/lsp_signature.nvim', -- signature as you type
		'jose-elias-alvarez/null-ls.nvim'
	}

	-- git stuff
	use 'lewis6991/gitsigns.nvim'

	-- Auto Completion --
	use {
		'hrsh7th/nvim-cmp',	-- Autocompletion framework
		'hrsh7th/cmp-nvim-lsp',	-- cmp LSP completion
		'hrsh7th/cmp-path',	-- cmp Path completion
		'hrsh7th/cmp-buffer',	-- cmp buffer completion
		'hrsh7th/cmp-cmdline',	-- cmp cmdline auto-completion
		'petertriho/cmp-git',   -- for git auto-completion
		'hrsh7th/cmp-nvim-lua',	-- for nvim lua auto-completion
		"saadparwaiz1/cmp_luasnip",	-- snippet completion
		'rcarriga/cmp-dap',
		'onsails/lspkind-nvim'	-- customize popup
	}
	-- crate.io cmp completion
	use {
		'saecki/crates.nvim',
		tag = 'v0.1.0',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	}
	-- snippets --
	use "L3MON4D3/LuaSnip"	-- snippet engine
	use "rafamadriz/friendly-snippets" --snippet collection


	-- Telescope
	use {
		'nvim-lua/plenary.nvim',
		'nvim-lua/popup.nvim',
		'nvim-telescope/telescope.nvim'
	}

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/nvim-treesitter-context'
	use "JoosepAlviste/nvim-ts-context-commentstring"

	-- Colorschemes --
	use 'folke/tokyonight.nvim'
	use "lunarvim/darkplus.nvim"
end)
