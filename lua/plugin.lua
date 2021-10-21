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
      "tami5/sqlite.lua",
      config = [[
        if vim.fn.has('win32')  ~= 0 then
          vim.g.sqlite_clib_path = "d:/libs/sqlite/sqlite3.dll"
        end
      ]],
      opt = true
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
                requires = {
                  "sqlite.lua"
                }
            }
        },
        config = [[
		      require('config.telescope')
		    ]],
        wants = {
            "plenary.nvim",
            "telescope-fzf-native.nvim",
            "telescope-frecency.nvim"
        }
    }

    use {
        'sainnhe/gruvbox-material',
        config = [[
          vim.cmd("colorscheme gruvbox-material")
          vim.g.gruvbox_material_palette = 'original'
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
    ]],
      disable = true
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

    use {
      'hrsh7th/nvim-cmp',
      config = [[
        require('cmp').setup{
          sources = {
            { name = 'nvim_lsp'}
          }
        }
      ]]
    }

    use 'hrsh7th/cmp-nvim-lsp'

    use {
      'dstein64/vim-startuptime',
      cmd = 'StartupTime'
    }

    use {
      'kyazdani42/nvim-web-devicons',
      config = [[
        require'nvim-web-devicons'.setup {}
      ]]
    }
end)

