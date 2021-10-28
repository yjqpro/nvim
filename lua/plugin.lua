local fn = vim.fn
local cmd = vim.api.nvim_command
-- packer.nvim
--
-- Install packer.nvim if it's not ready.
--
-- To know whether packer.nvim is installn or not, check this folder exists:
--
--  $DATA/site/pack/packer/start/packer.nvim
--
local packer_install_path = fn.stdpath('data') ..
                                '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(packer_install_path)) > 0 then
  fn.system({
      'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', packer_install_path
  })
end

cmd('packadd packer.nvim')

--
-- Auto recompile plugins when changes in plugin.lua
--
vim.cmd [[
augroup packer_recompile
  autocmd!
  autocmd BufWritePost */lua/plugins.lua echom "Recompile!" | source <afile> | PackerCompile
augroup END
]]

local pkr = require('packer')
pkr.init({
  ensure_dependencies = true,
  display = {
    auto_clean = false,
    open_fn = function()
      return require('packer.util').float {border = 'single'}
    end
  }
})

pkr.startup(function(use)
    use 'wbthomason/packer.nvim'

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

   -- use {
   --     'sainnhe/gruvbox-material',
   --     config = [[
   --       vim.cmd("colorscheme gruvbox-material")
   --       vim.g.gruvbox_material_palette = 'original'
   --     ]]
   -- }

    use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"},
      config = [[
        vim.g.gruvbox_invert_selection=0
        vim.cmd("colorscheme gruvbox")
      ]]}

    use {
        'windwp/nvim-autopairs',
        config = [[
		require('nvim-autopairs').setup{}
		]]
    }

    use 'tpope/vim-surround'

    use {
        'rhysd/vim-clang-format',
        cmd = 'ClangFormat',
        config = [[
      vim.g['clang_format#auto_format'] = 0
      vim.g['clang_format#code_style'] = 'chromium'
      vim.g['clang_format#style_options'] = {SortIncludes = 'false'}
    ]],
    }

    use 'tpope/vim-abolish'

    use {'tpope/vim-fugitive', cmd = {'Git', 'G'}}

    -- text object
    use {'kana/vim-textobj-user',
      opt = true,
      setup = function()
        require('utils').packer_lazy_load 'vim-textobj-user'
      end
    }

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
          vim.g.asyncrun_open = 10
        ]]
            }
        }
    }

    use {
      'tpope/vim-unimpaired',
      opt = true,
      setup = function()
        require('utils').packer_lazy_load 'vim-unimpaired'
      end
    }

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

    use 'justinmk/vim-dirvish'

    use({
      "NTBBloodbath/galaxyline.nvim",
      -- your statusline
      config = function()
        require("galaxyline.themes.eviline")
      end,
      -- some optional icons
      -- requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })
end)

