-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/yjqpro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/yjqpro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/yjqpro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/yjqpro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/yjqpro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["asyncrun.vim"] = {
    config = { "          vim.g.asyncrun_open = 10\n        " },
    load_after = {
      ["asynctasks.vim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["asynctasks.vim"] = {
    after = { "asyncrun.vim" },
    commands = { "AsyncRun", "AsyncStop", "AsyncTask", "AsyncTaskEdit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/asynctasks.vim",
    url = "https://github.com/skywind3000/asynctasks.vim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["gruvbox.nvim"] = {
    config = { '        vim.g.gruvbox_invert_selection=0\n        vim.cmd("colorscheme gruvbox")\n      ' },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["lualine.nvim"] = {
    config = { "        require('config.lualine')\n      " },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\t\trequire('nvim-autopairs').setup{}\n\t\t" },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "        require('cmp').setup{\n          sources = {\n            { name = 'nvim_lsp'}\n          }\n        }\n      " },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "        require('nvim_comment').setup {}\n      " },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    config = { "      require('config.nvim-lspconfig')\n    " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    config = { "        require'nvim-web-devicons'.setup {}\n      " },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sqlite.lua"] = {
    config = { "        if vim.fn.has('win32')  ~= 0 then\n          vim.g.sqlite_clib_path = \"d:/libs/sqlite/sqlite3.dll\"\n        end\n      " },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["telescope-frecency.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim",
    wants = { "sqlite.lua" }
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\t\t      require('config.telescope')\n\t\t    " },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim",
    wants = { "plenary.nvim", "telescope-fzf-native.nvim", "telescope-frecency.nvim" }
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-clang-format"] = {
    commands = { "ClangFormat" },
    config = { "      vim.g['clang_format#auto_format'] = 0\n      vim.g['clang_format#code_style'] = 'chromium'\n      vim.g['clang_format#style_options'] = {SortIncludes = 'false'}\n    " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-clang-format",
    url = "https://github.com/rhysd/vim-clang-format"
  },
  ["vim-dirvish"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/vim-dirvish",
    url = "https://github.com/justinmk/vim-dirvish"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "G" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rooter"] = {
    config = { "      vim.g.rooter_silent_chdir = 1\n      vim.g.rooter_patterns = {'.git', '.root'}\n\t\t" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-textobj-parameter"] = {
    load_after = {
      ["vim-textobj-user"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-textobj-parameter",
    url = "https://github.com/sgur/vim-textobj-parameter"
  },
  ["vim-textobj-user"] = {
    after = { "vim-textobj-parameter" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-unimpaired"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-textobj-user
time([[Setup for vim-textobj-user]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\21vim-textobj-user\21packer_lazy_load\nutils\frequire\0", "setup", "vim-textobj-user")
time([[Setup for vim-textobj-user]], false)
-- Setup for: vim-unimpaired
time([[Setup for vim-unimpaired]], true)
try_loadstring("\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19vim-unimpaired\21packer_lazy_load\nutils\frequire\0", "setup", "vim-unimpaired")
time([[Setup for vim-unimpaired]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
        require'nvim-web-devicons'.setup {}
      
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
        require('cmp').setup{
          sources = {
            { name = 'nvim_lsp'}
          }
        }
      
time([[Config for nvim-cmp]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
		require('nvim-autopairs').setup{}
		
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
        require('nvim_comment').setup {}
      
time([[Config for nvim-comment]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
        require('config.lualine')
      
time([[Config for lualine.nvim]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
        vim.g.gruvbox_invert_selection=0
        vim.cmd("colorscheme gruvbox")
      
time([[Config for gruvbox.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncRun lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncStop lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncStop", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTask lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTask", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTaskEdit lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTaskEdit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ClangFormat lua require("packer.load")({'vim-clang-format'}, { cmd = "ClangFormat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-lspconfig'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
  -- Function lazy-loads
time([[Defining lazy-load function autocommands]], true)
vim.cmd[[au FuncUndefined FindRootDirectory ++once lua require("packer.load")({'vim-rooter'}, {}, _G.packer_plugins)]]
time([[Defining lazy-load function autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
