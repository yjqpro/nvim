local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

return require('packer').startup(function(use)

    use {
        'airblade/vim-rooter',
        config = [[
      vim.g.rooter_silent_chdir = 1
      vim.g.rooter_patterns = {'.git', '.root'}
		]],
        fn = 'FindRootDirectory'
    }

    use {
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        requires = {
            {'nvim-lua/plenary.nvim', opt = true},
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                run = "make",
                opt = true
            }, -- require sqlite: brew install sqlite
            {
                "nvim-telescope/telescope-frecency.nvim",
                opt = true,
                wants = 'sqlite.lua',
                requires = {{"tami5/sqlite.lua", opt = true}}
            }
        },
        config = [[
		  require('config.telescope')
		]],
        wants = {
            "plenary.nvim", "telescope-fzf-native.nvim",
            "telescope-frecency.nvim"
        }
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

    use {
        'rhysd/vim-clang-format',
        ft = {'cpp'},
        config = [[
      vim.g['clang_format#auto_format'] = 1
      vim.g['clang_format#code_style'] = 'chromium'
      vim.g['clang_format#style_options'] = {SortIncludes = 'false'}
    ]]
    }

    use 'tpope/vim-abolish'

    use {'tpope/vim-fugitive', cmd = {'Git', 'G'}}

    -- text object
    use {'kana/vim-textobj-user', opt = true}

    use {
        'sgur/vim-textobj-parameter',
        opt = true,
        requires = 'kana/vim-textobj-user',
        after = 'vim-textobj-user'
    }

    -- skywin3000
    use {
        'skywind3000/asynctasks.vim',
        opt = true,
        cmd = {'AsyncRun', 'AsyncStop', 'AsyncTask', 'AsyncTaskEdit'},
        requires = {
            {
                'skywind3000/asyncrun.vim',
                opt = true,
                config = [[
          vim.g.asyncrun_open = 8
        ]]
            }
        }
    }

    use {'tpope/vim-unimpaired', opt = true}

    use {
        'neovim/nvim-lspconfig',
        event = 'BufReadPre',
        config = [[
      require('config.nvim-lspconfig')
    ]]
    }
    -- My plugins here
    -- use 'foo1/bar1.nvim'
    -- use 'foo2/bar2.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    -- if packer_bootstrap then
    -- require('packer').sync()
    -- end
end)

