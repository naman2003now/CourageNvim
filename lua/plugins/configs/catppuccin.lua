local status_ok, catppuccin = pcall(require, "catppuccin")

if not status_ok then return end
catppuccin.setup({
	flavour = "mocha",
	term_colors = true,
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = true,
		neotree = true,
		telescope = true,
	},
})
vim.cmd.colorscheme = "catppuccin"
