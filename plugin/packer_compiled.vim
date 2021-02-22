" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/paulmcfreely/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/paulmcfreely/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/paulmcfreely/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/paulmcfreely/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/paulmcfreely/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  delimitMate = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/delimitMate"
  },
  ["deoplete.nvim"] = {
    commands = { "UpdateRemotePlugins" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/opt/deoplete.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/lightline.vim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["neuron.nvim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/neuron.nvim"
  },
  ["nvim-yarp"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/nvim-yarp"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  tabular = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-endwise"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-hug-neovim-rpc"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-hug-neovim-rpc"
  },
  ["vim-js"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-js"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-table-mode"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  },
  vimpeccable = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/vimpeccable"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/Users/paulmcfreely/.local/share/nvim/site/pack/packer/start/yats.vim"
  }
}


-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file UpdateRemotePlugins lua require("packer.load")({'deoplete.nvim'}, { cmd = "UpdateRemotePlugins", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
