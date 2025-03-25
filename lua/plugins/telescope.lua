return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({
			mappings = {
				n = {
					["<leader>jk"] = require("telescope.actions").close,
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})
		telescope.load_extension("ui-select")

		local map = vim.keymap.set

		map("n", "<leader>ff", builtin.find_files, {})
		map("n", "<leader>fg", builtin.live_grep, {})
		map("n", "<leader>fb", builtin.buffers, {})
		map("n", "<leader>fs", builtin.git_status, {})
		map("n", "<leader>fc", builtin.git_commits, {})
	end,
}
