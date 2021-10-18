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

