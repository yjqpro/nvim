local actions = require "telescope.actions"
require('telescope').setup{
	defaults  = {
		mappings  = {
			i = {
        ["<C-n>"] = false,
        ["<C-p>"] = false,
        ["<C-[>"] = actions.close,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-]>"] = actions.file_vsplit
			}
		}
	}
}

require('telescope').load_extension('fzf')
require"telescope".load_extension("frecency")

local M = {}


return setmetatable(
    {},
    {
        __index = function(_, k)
            reloader()
            return M[k]
        end
    }
)
