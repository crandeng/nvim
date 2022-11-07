-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/orsenchen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/orsenchen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/orsenchen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/orsenchen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/orsenchen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["nvimdev.nvim"] = {
    loaded = true,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/start/nvimdev.nvim",
    url = "https://github.com/neovim/nvimdev.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["statusline.lua"] = {
    config = { "\27LJ\2\nj\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\2+\1\1\0=\1\2\0+\1\1\0=\1\3\0+\1\2\0=\1\4\0K\0\1\0\20ale_diagnostics\20lsp_diagnostics\ftabline\15statusline\frequire\0" },
    loaded = true,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/start/statusline.lua",
    url = "https://github.com/beauwilliams/statusline.lua"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n·\r\0\0\f\0]\0¶\0015\0\0\0006\1\1\0009\1\2\0019\1\3\1\18\2\1\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\0016\2\1\0009\2\a\2'\3\t\0=\3\b\0026\2\1\0009\2\a\2'\3\t\0=\3\n\2\18\2\1\0'\4\v\0'\5\f\0'\6\r\0\18\a\0\0B\2\5\1\18\2\1\0'\4\v\0'\5\14\0'\6\15\0\18\a\0\0B\2\5\0016\2\16\0'\4\17\0B\2\2\0029\3\18\2'\5\19\0B\3\2\0016\3\16\0'\5\20\0B\3\2\0029\4\21\0025\6T\0005\a\22\0005\b\23\0=\b\24\a5\bD\0005\t\26\0009\n\25\3=\n\27\t9\n\28\3=\n\29\t9\n\30\3=\n\31\t9\n \3=\n!\t9\n\"\3=\n#\t9\n\30\3=\n$\t9\n \3=\n%\t9\n&\3=\n'\t9\n(\3=\n)\t9\n*\3=\n+\t9\n,\3=\n-\t9\n.\3=\n/\t9\n0\3=\n1\t9\n2\3=\n3\t9\n4\3=\n5\t9\n6\0039\v7\3 \n\v\n=\n8\t9\n6\0039\v9\3 \n\v\n=\n:\t9\n;\0039\v<\3 \n\v\n=\n=\t9\n>\0039\v<\3 \n\v\n=\n?\t9\n@\3=\nA\t9\nB\3=\nC\t=\tE\b5\tF\0009\n\"\3=\nG\t9\n&\3=\n'\t9\n(\3=\n)\t9\n*\3=\n+\t9\n,\3=\n-\t9\n6\0039\v7\3 \n\v\n=\n8\t9\n6\0039\v9\3 \n\v\n=\n:\t9\n;\0039\v<\3 \n\v\n=\n=\t9\n>\0039\v<\3 \n\v\n=\n?\t9\n\30\3=\nH\t9\n \3=\nI\t9\nJ\3=\nK\t9\nL\3=\nM\t9\nN\3=\nO\t9\n\30\3=\n$\t9\n \3=\n%\t9\nJ\3=\nP\t9\nN\3=\nQ\t9\n.\3=\n/\t9\n0\3=\n1\t9\n2\3=\n3\t9\n4\3=\n5\t9\nB\3=\nR\t=\t\v\b=\bS\a=\aU\0065\aY\0005\bW\0005\tV\0=\tX\b=\b\19\a=\aZ\6B\4\2\0016\4[\0'\6\\\0B\4\2\1K\0\1\0&Telescope config function loaded!\nprint\15extensions\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\rdefaults\1\0\0\rmappings\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\1\2\0\0\nsmart\1\0\2\20selection_caret\tÔÅ§ \18prompt_prefix\tÔë´ \nsetup\22telescope.actions\16media_files\19load_extension\14telescope\frequire!<cmd>Telescope live_grep<cr>\n<c-t>x<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>\14<leader>f\6n\19maplocalleader\6 \14mapleader\6g\n<Nop>\f<Space>\5\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0" },
    loaded = true,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-signify"] = {
    loaded = true,
    needs_bufread = false,
    path = "/Users/orsenchen/.local/share/nvim/site/pack/packer/opt/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-signify
time([[Setup for vim-signify]], true)
time([[Setup for vim-signify]], false)
time([[packadd for vim-signify]], true)
vim.cmd [[packadd vim-signify]]
time([[packadd for vim-signify]], false)
-- Config for: statusline.lua
time([[Config for statusline.lua]], true)
try_loadstring("\27LJ\2\nj\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\2+\1\1\0=\1\2\0+\1\1\0=\1\3\0+\1\2\0=\1\4\0K\0\1\0\20ale_diagnostics\20lsp_diagnostics\ftabline\15statusline\frequire\0", "config", "statusline.lua")
time([[Config for statusline.lua]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n·\r\0\0\f\0]\0¶\0015\0\0\0006\1\1\0009\1\2\0019\1\3\1\18\2\1\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\0016\2\1\0009\2\a\2'\3\t\0=\3\b\0026\2\1\0009\2\a\2'\3\t\0=\3\n\2\18\2\1\0'\4\v\0'\5\f\0'\6\r\0\18\a\0\0B\2\5\1\18\2\1\0'\4\v\0'\5\14\0'\6\15\0\18\a\0\0B\2\5\0016\2\16\0'\4\17\0B\2\2\0029\3\18\2'\5\19\0B\3\2\0016\3\16\0'\5\20\0B\3\2\0029\4\21\0025\6T\0005\a\22\0005\b\23\0=\b\24\a5\bD\0005\t\26\0009\n\25\3=\n\27\t9\n\28\3=\n\29\t9\n\30\3=\n\31\t9\n \3=\n!\t9\n\"\3=\n#\t9\n\30\3=\n$\t9\n \3=\n%\t9\n&\3=\n'\t9\n(\3=\n)\t9\n*\3=\n+\t9\n,\3=\n-\t9\n.\3=\n/\t9\n0\3=\n1\t9\n2\3=\n3\t9\n4\3=\n5\t9\n6\0039\v7\3 \n\v\n=\n8\t9\n6\0039\v9\3 \n\v\n=\n:\t9\n;\0039\v<\3 \n\v\n=\n=\t9\n>\0039\v<\3 \n\v\n=\n?\t9\n@\3=\nA\t9\nB\3=\nC\t=\tE\b5\tF\0009\n\"\3=\nG\t9\n&\3=\n'\t9\n(\3=\n)\t9\n*\3=\n+\t9\n,\3=\n-\t9\n6\0039\v7\3 \n\v\n=\n8\t9\n6\0039\v9\3 \n\v\n=\n:\t9\n;\0039\v<\3 \n\v\n=\n=\t9\n>\0039\v<\3 \n\v\n=\n?\t9\n\30\3=\nH\t9\n \3=\nI\t9\nJ\3=\nK\t9\nL\3=\nM\t9\nN\3=\nO\t9\n\30\3=\n$\t9\n \3=\n%\t9\nJ\3=\nP\t9\nN\3=\nQ\t9\n.\3=\n/\t9\n0\3=\n1\t9\n2\3=\n3\t9\n4\3=\n5\t9\nB\3=\nR\t=\t\v\b=\bS\a=\aU\0065\aY\0005\bW\0005\tV\0=\tX\b=\b\19\a=\aZ\6B\4\2\0016\4[\0'\6\\\0B\4\2\1K\0\1\0&Telescope config function loaded!\nprint\15extensions\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\rdefaults\1\0\0\rmappings\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\1\2\0\0\nsmart\1\0\2\20selection_caret\tÔÅ§ \18prompt_prefix\tÔë´ \nsetup\22telescope.actions\16media_files\19load_extension\14telescope\frequire!<cmd>Telescope live_grep<cr>\n<c-t>x<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>\14<leader>f\6n\19maplocalleader\6 \14mapleader\6g\n<Nop>\f<Space>\5\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
