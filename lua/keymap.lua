vim.g.mapleader = ' '

local map = function(key)
  -- get the extra options
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  -- basic support for buffer-scoped keybindings
  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

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
map {'n', '<c-p>', '"<cmd>Telescope find_files cwd=".FindRootDirectoryOrCwd()."<cr>"', expr = true }
map {'n', '<leader>fg', '<cmd>Telescope live_grep<cr>'}
map {'n', '<leader>fw', '"<cmd>Telescope grep_string cwd=".FindRootDirectoryOrCwd()."<cr>"', expr = true }
map {'n', '<leader>ev', ':e $MYVIMRC<cr>'}
map {'n', '<leader>E', ':e %<.'}


-- 快速在窗口中移动
map {'n', '<c-j>', '<c-w><c-j>'}
map {'n', '<c-k>', '<c-w><c-k>'}
map {'n', '<c-h>', '<c-w><c-h>'}
map {'n', '<c-l>', '<c-w><c-l>'}

map {'n', '<c-l>', '<c-w><c-l>'}

map {'n', '<leader>-', '<c-w>s'}
map {'n', '<leader>_', '<c-w>v'}

map {'n', '<leader>q', ':q<cr>'}

map {'n', '<leader>w', ':w<cr>'}

-- vim-fugitive
map {'n', '<leader>G', ':G<cr>'}
