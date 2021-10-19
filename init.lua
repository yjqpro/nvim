-- let g:loaded_matchparen        = 1
-- let g:loaded_matchit           = 1
-- let g:loaded_logiPat           = 1
-- let g:loaded_rrhelper          = 1
-- let g:loaded_tarPlugin         = 1
-- " let g:loaded_man               = 1
-- let g:loaded_gzip              = 1
-- let g:loaded_zipPlugin         = 1
-- let g:loaded_2html_plugin      = 1
-- let g:loaded_shada_plugin      = 1
-- let g:loaded_spellfile_plugin  = 1
-- let g:loaded_netrw             = 1
-- let g:loaded_netrwPlugin       = 1
-- let g:loaded_tutor_mode_plugin = 1
-- let g:loaded_remote_plugins    = 1

vim.cmd("colorscheme gruvbox")

require('plugin')
require('basic')
require('tabsize')
require('style')
require('keymap')

vim.schedule(function()
  vim.defer_fn(function()
    require('packer').loader('vim-textobj-user')
    require('packer').loader('vim-unimpaired')
  end, 50)
end)

local g = vim.g
-- Disable some built-in plugins we don't want
local disabled_built_ins = {
--  'gzip',
--  'man',
--  'matchit',
--  'matchparen',
--  'shada_plugin',
--  'tarPlugin',
--  'tar',
--  'zipPlugin',
--  'zip',
--  'netrwPlugin',
  'matchparen',
  'matchit',
  'logiPat',
  'rrhelper',
  'tarPlugin',
  'man',
  'gzip',
  'zipPlugin',
  '2html_plugin',
  'shada_plugin',
  'spellfile_plugin',
  'netrw',
  'netrwPlugin',
  'tutor_mode_plugin',
  'remote_plugins'
}

for i = 1, 15 do
  g['loaded_' .. disabled_built_ins[i]] = 1
end
