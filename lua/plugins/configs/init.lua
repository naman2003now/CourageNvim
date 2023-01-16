return function(use)
	use{'wbthomason/packer.nvim'}
	use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }
	use{  
		's1n7ax/nvim-window-picker',
		config = function() require "plugins.configs.window-picker" end
	}
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		event = "BufEnter",
		cmd = {
			"TSInstall",
			"TSInstallInfo",
			"TSInstallSync",
			"TSUninstall",
			"TSUpdate",
			"TSUpdateSync",
			"TSDisableAll",
			"TSEnableAll",
		},
		config = function() require "plugins.configs.treesitter" end,
	}
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},

		config = function() require "plugins.configs.neo-tree" end,
	}
	use {
		"folke/which-key.nvim",
		config = function() require "plugins.configs.which-key" end,
	}
	use {
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.0',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function() require "plugins.configs.telescope" end ,
	}
  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function() require "plugins.configs.toggleterm" end,
  }
end
