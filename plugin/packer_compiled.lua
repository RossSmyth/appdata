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
local package_path_str = "C:\\Users\\crs20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\crs20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\crs20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\crs20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\crs20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
  chadtree = {
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rchadtree\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\chadtree",
    url = "https://github.com/ms-jpq/chadtree"
  },
  ["coq.thirdparty"] = {
    config = { "\27LJ\2\n`\0\0\4\0\3\0\b6\0\0\0'\2\1\0B\0\2\0024\2\3\0005\3\2\0>\3\1\2B\0\2\1K\0\1\0\1\0\3\15short_name\tnLUA\14conf_only\2\bsrc\fnvimlua\vcoq_3p\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coq.thirdparty",
    url = "https://github.com/ms-jpq/coq.thirdparty"
  },
  coq_nvim = {
    config = { "\27LJ\2\n#\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\bcoq\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  lsp_lines = {
    config = { "\27LJ\2\nr\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0B\0\2\1K\0\1\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp_lines",
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n£\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\26code_action_lightbulb\1\0\0\1\0\5\tsign\2\18sign_priority\3\20\17virtual_text\1\venable\2\21enable_in_insert\2\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fpyright\14lspconfig\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["overseer.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\roverseer\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\overseer.nvim",
    url = "https://github.com/stevearc/overseer.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n;\0\1\4\0\5\0\a6\1\0\0009\1\1\0019\1\2\0019\1\3\0019\3\4\0B\1\2\1K\0\1\0\targs\vrename\bbuf\blsp\bvimç\2\1\2\b\1\16\0\0316\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0-\6\0\0009\6\5\0069\6\5\0065\a\6\0=\1\a\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\b\0-\6\0\0009\6\t\0069\6\t\0065\a\n\0=\1\a\aB\2\5\0016\2\0\0009\2\v\0029\2\f\2\18\4\1\0'\5\r\0003\6\14\0005\a\15\0B\2\5\1K\0\1\0\0¿\1\0\1\nnargs\3\1\0\vRename!nvim_buf_create_user_command\bapi\1\0\1\fnoremap\2\22code_action_group\6Q\vbuffer\1\0\1\fnoremap\2\18hover_actions\6E\6n\bset\vkeymap\bvim¸\3\1\0\b\0\25\0\0306\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\n\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\4=\4\v\0035\4\r\0003\5\f\0=\5\14\0045\5\15\0=\5\16\0045\5\22\0005\6\18\0005\a\17\0=\a\19\0065\a\20\0=\a\21\6=\6\23\5>\5\1\4=\4\24\3B\1\2\0012\0\0ÄK\0\1\0\vserver\18rust-analyzer\1\0\0\16checkOnSave\1\0\1\fcommand\vclippy\16diagnostics\1\0\0\1\0\1\17experimental\2\bcmd\1\2\0\0[C:\\Users\\crs20\\.rustup\\toolchains\\nightly-x86_64-pc-windows-msvc\\bin\\rust-analyzer.exe\14on_attach\1\0\0\0\ntools\1\0\0\16crate_graph\1\0\2\voutput\14graph.svg\fbackend\bSVG\18hover_actions\1\0\1\15auto_focus\2\16inlay_hints\1\0\0\1\0\3\23other_hints_prefix\5\27parameter_hints_prefix\5\14highlight\vVisual\nsetup\15rust-tools\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n›\1\0\0\6\0\n\0\0176\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\1\3\0005\3\a\0005\4\5\0005\5\4\0=\5\6\4=\4\b\3B\1\2\0019\1\t\0'\3\6\0B\1\2\1K\0\1\0\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nsetup\14telescope\ffzf_lib\frequire\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\nˇ\1\0\0\3\0\b\0\0216\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0000            colorscheme tokyonight\n        \bcmd tokyonight_italic_variables tokyonight_italic_functions\31tokyonight_italic_keywords\31tokyonight_italic_comments\6g\bvim\0" },
    loaded = true,
    path = "C:\\Users\\crs20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\nˇ\1\0\0\3\0\b\0\0216\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0000            colorscheme tokyonight\n        \bcmd tokyonight_italic_variables tokyonight_italic_functions\31tokyonight_italic_keywords\31tokyonight_italic_comments\6g\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: chadtree
time([[Config for chadtree]], true)
try_loadstring("\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rchadtree\frequire\0", "config", "chadtree")
time([[Config for chadtree]], false)
-- Config for: coq.thirdparty
time([[Config for coq.thirdparty]], true)
try_loadstring("\27LJ\2\n`\0\0\4\0\3\0\b6\0\0\0'\2\1\0B\0\2\0024\2\3\0005\3\2\0>\3\1\2B\0\2\1K\0\1\0\1\0\3\15short_name\tnLUA\14conf_only\2\bsrc\fnvimlua\vcoq_3p\frequire\0", "config", "coq.thirdparty")
time([[Config for coq.thirdparty]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\5\0\a6\1\0\0009\1\1\0019\1\2\0019\1\3\0019\3\4\0B\1\2\1K\0\1\0\targs\vrename\bbuf\blsp\bvimç\2\1\2\b\1\16\0\0316\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0-\6\0\0009\6\5\0069\6\5\0065\a\6\0=\1\a\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\b\0-\6\0\0009\6\t\0069\6\t\0065\a\n\0=\1\a\aB\2\5\0016\2\0\0009\2\v\0029\2\f\2\18\4\1\0'\5\r\0003\6\14\0005\a\15\0B\2\5\1K\0\1\0\0¿\1\0\1\nnargs\3\1\0\vRename!nvim_buf_create_user_command\bapi\1\0\1\fnoremap\2\22code_action_group\6Q\vbuffer\1\0\1\fnoremap\2\18hover_actions\6E\6n\bset\vkeymap\bvim¸\3\1\0\b\0\25\0\0306\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\n\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\4=\4\v\0035\4\r\0003\5\f\0=\5\14\0045\5\15\0=\5\16\0045\5\22\0005\6\18\0005\a\17\0=\a\19\0065\a\20\0=\a\21\6=\6\23\5>\5\1\4=\4\24\3B\1\2\0012\0\0ÄK\0\1\0\vserver\18rust-analyzer\1\0\0\16checkOnSave\1\0\1\fcommand\vclippy\16diagnostics\1\0\0\1\0\1\17experimental\2\bcmd\1\2\0\0[C:\\Users\\crs20\\.rustup\\toolchains\\nightly-x86_64-pc-windows-msvc\\bin\\rust-analyzer.exe\14on_attach\1\0\0\0\ntools\1\0\0\16crate_graph\1\0\2\voutput\14graph.svg\fbackend\bSVG\18hover_actions\1\0\1\15auto_focus\2\16inlay_hints\1\0\0\1\0\3\23other_hints_prefix\5\27parameter_hints_prefix\5\14highlight\vVisual\nsetup\15rust-tools\frequire\0", "config", "rust-tools.nvim")
time([[Config for rust-tools.nvim]], false)
-- Config for: coq_nvim
time([[Config for coq_nvim]], true)
try_loadstring("\27LJ\2\n#\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\bcoq\frequire\0", "config", "coq_nvim")
time([[Config for coq_nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fpyright\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lsp_lines
time([[Config for lsp_lines]], true)
try_loadstring("\27LJ\2\nr\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0B\0\2\1K\0\1\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0", "config", "lsp_lines")
time([[Config for lsp_lines]], false)
-- Config for: overseer.nvim
time([[Config for overseer.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\roverseer\frequire\0", "config", "overseer.nvim")
time([[Config for overseer.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n£\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\26code_action_lightbulb\1\0\0\1\0\5\tsign\2\18sign_priority\3\20\17virtual_text\1\venable\2\21enable_in_insert\2\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n›\1\0\0\6\0\n\0\0176\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\1\3\0005\3\a\0005\4\5\0005\5\4\0=\5\6\4=\4\b\3B\1\2\0019\1\t\0'\3\6\0B\1\2\1K\0\1\0\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nsetup\14telescope\ffzf_lib\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
