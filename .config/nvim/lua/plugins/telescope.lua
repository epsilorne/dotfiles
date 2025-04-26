local config = function()
	local telescope = require("telescope")
  local builtin = require("telescope.builtin")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = false,
			},
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})

  vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
  vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
  vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("> ") }) 
  end)
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	config = config,
}
