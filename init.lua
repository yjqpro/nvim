local g = vim.g
-- Disable some built-in plugins we don't want
local disabled_built_ins = {
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

require('plugin')
require('basic')
require('config')
require('tabsize')
require('style')
require('keymap')

vim.schedule(function()
  vim.defer_fn(function()
    require('packer').loader('vim-textobj-user')
    require('packer').loader('vim-unimpaired')
  end, 50)
end)
