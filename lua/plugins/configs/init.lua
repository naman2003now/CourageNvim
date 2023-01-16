return function(use)
	use{'wbthomason/packer.nvim'}
	use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }
	use{  
		's1n7ax/nvim-window-picker',
		config = function() require "plugins.configs.window-picker" end
	}
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},

		config = function() require "plugins.configs.neo-tree" end
	}

end
