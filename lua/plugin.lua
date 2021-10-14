local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

	use {
		'airblade/vim-rooter',
		config = [[
		vim.g.rooter_patterns = {'.git', '.root'}
		]]
	}

	use {
		'nvim-telescope/telescope.nvim',
		cmd = "Telescope",
		requires = { {'nvim-lua/plenary.nvim'} },
		config = [[
		require('config.telescope')
		]],
		after="vim-rooter"
	}

	use {
		'sainnhe/gruvbox-material',
		config = [[
		vim.cmd("colorscheme gruvbox")
		]]
	}
	use {
		'windwp/nvim-autopairs',
		config = [[
		require('nvim-autopairs').setup{}
		]]
	}

	use 'tpope/vim-surround'

	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	--if packer_bootstrap then
	--require('packer').sync()
	--end
end)


