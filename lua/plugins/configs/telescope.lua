local status_ok, telescope = pcall(require, "telescope")
if not status_ok then return end
local actions = require "telescope.actions"
telescope.setup {
	defaults = {
		prompt_prefix = " ",
		selection_caret = "❯ ",
		path_display = { "truncate" },
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},

		mappings = {
			i = {
				["<C-[>"] = actions.close,

				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},

			n = {
				["<esc>"] = actions.close,
				["<C-[>"] = actions.close,
				["<CR>"] = actions.select_default,

				["j"] = actions.move_selection_next,
				["k"] = actions.move_selection_previous,
			},
		},
	},
}

