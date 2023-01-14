return function(use)
	use{'wbthomason/packer.nvim'}
	use { 
		"catppuccin/nvim", 
		as = "catppuccin", 
		setup = function() require "plugins.configs.catppuccin" end
	}
	use{  
		's1n7ax/nvim-window-picker',
		setup = function() require "plugins.configs.window-picker" end
	}
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},

		setup = function() require "plugins.configs.neo-tree" end
	}

end
