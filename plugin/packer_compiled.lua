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
  local success, result = pcall(loadstring(s))
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
    config = { "          vim.g.asyncrun_open = 8\n        " },
    load_after = {
      ["asynctasks.vim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/asyncrun.vim"
  },
  ["asynctasks.vim"] = {
    after = { "asyncrun.vim" },
    commands = { "AsyncRun", "AsyncStop", "AsyncTask", "AsyncTaskEdit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/asynctasks.vim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["nvim-autopairs"] = {
    config = { "\t\trequire('nvim-autopairs').setup{}\n\t\t" },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "        require('cmp').setup{\n          sources = {\n            { name = 'nvim_lsp'}\n          }\n        }\n      " },
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "      require('config.nvim-lspconfig')\n    " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["sqlite.lua"] = {
    config = { "        if vim.fn.has('win32')  ~= 0 then\n          vim.g.sqlite_clib_path = \"d:/libs/sqlite/sqlite3.dll\"\n        end\n      " },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/sqlite.lua"
  },
  ["telescope-frecency.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim",
    wants = { "sqlite.lua" }
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\t\t      require('config.telescope')\n\t\t    " },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    wants = { "plenary.nvim", "telescope-fzf-native.nvim", "telescope-frecency.nvim" }
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "G" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-rooter"] = {
    config = { "      vim.g.rooter_silent_chdir = 1\n      vim.g.rooter_patterns = {'.git', '.root'}\n\t\t" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-rooter"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-parameter"] = {
    load_after = {
      ["vim-textobj-user"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-textobj-parameter"
  },
  ["vim-textobj-user"] = {
    after = { "vim-textobj-parameter" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-textobj-user"
  },
  ["vim-unimpaired"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/yjqpro/.local/share/nvim/site/pack/packer/opt/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
		require('nvim-autopairs').setup{}
		
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
        require('cmp').setup{
          sources = {
            { name = 'nvim_lsp'}
          }
        }
      
time([[Config for nvim-cmp]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncRun lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncStop lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncStop", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTask lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTask", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTaskEdit lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTaskEdit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
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
