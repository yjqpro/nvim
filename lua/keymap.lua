vim.g.mapleader = ' '

vim.cmd [[
function! FindRootDirectoryOrCwd()
    let root_dir = FindRootDirectory()
    if empty(root_dir)
	let root_dir = getcwd()
    end
    return root_dir
endfunction
]]
-- vim.api.nvim_set_keymap('n', '<c-p>', '<cmd>Telescope find_files<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<c-p>', '"<cmd>Telescope find_files cwd=".FindRootDirectoryOrCwd()."<cr>"', {noremap = true, expr = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {noremap = true})
