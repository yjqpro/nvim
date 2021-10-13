local actions = require "telescope.actions"
require('telescope').setup{
	defaults  = {
		mappings  = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-]>"] = actions.file_vsplit,
			}
		}
	}
}

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
