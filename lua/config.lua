require('plugins') -- load and execute plugin definition file
require('vimp')
Utils = require('utils')
local opt = Utils.opt
local map = Utils.map

local cmd = vim.cmd
local api = vim.api
local fn = vim.fn
local g = vim.g

-- Security
opt('o', 'modelines', 0)
-- Color
cmd 'colorscheme palenight'
opt('o', 'termguicolors', true)
opt('o', 'background', 'dark')
-- Fonts
opt('o', 'encoding', 'utf8')
-- Splits
opt('o', 'splitright', true)
-- TextWidth Indicator
opt('o', 'colorcolumn', '80')
-- Syntax Highlighting
opt('o', 'syntax', 'enable')
-- Hide Buffer instead of closing them
opt('o', 'hidden', true)
-- Maintain undo history between sessions
opt('o', 'undofile', true)
-- opt('o', 'undodir', '~/.nvim/undo')
opt('b', 'swapfile', false)
opt('o', 'history', 200)
opt('o', 'laststatus', 2)
-- Case insensitive search
opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)
opt('o', 'infercase', true)
-- Make Backspace behave sanely
opt('o', 'backspace', 'indent,eol,start')
-- Searching
opt('o', 'hlsearch', true)
opt('o', 'incsearch', true)
-- Set indentation as 4 spaces
opt('o', 'tabstop', 4)
opt('o', 'shiftwidth', 4)
opt('o', 'expandtab', true)
opt('o', 'softtabstop', 4)
-- Turn backup off since everything is in git
opt('o', 'backup', false)
opt('o', 'wb', false)
-- Stop unnecessary rendering
opt('o', 'lazyredraw', true)
-- No Delay after pressing Esc key => TODO still necessary ?
opt('o', 'timeout', false)
opt('o', 'ttimeout', true)
-- No line wrapping
opt('o', 'wrap', false)
opt('w', 'number', true)
opt('w', 'relativenumber', true)
-- Folding => Revisit with tree-sitter
opt('o', 'foldmethod', 'syntax')
opt('o', 'foldnestmax', 10)
opt('o', 'foldenable', true) -- all folds closed by default
opt('o', 'foldlevel', 0)
g['vim_markdown_folding_disabled'] = 1
opt('o', 're', 0) -- disable regex for yats

--============
--    REMAP
--============
g.mapleader = " "
-- change esc to more confortable keystroke
--inoremap jk <esc>
--inoremap <esc> <nop>
map('', '<C-H>', ':noh<Cr>')
map('i', 'jk', '<esc>')
map('i', '<esc>', '<nop>')
-- Telescope
-- TODO fg a bit awkward
map('', '<Leader>pp', "<cmd>lua require'telescope.builtin'.builtin{initial_mode='insert'}<cr>")
map('', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('', '<leader>fh', '<cmd>Telescope grep_string<cr>')
map('', '<leader>fc', '<cmd>Telescope commands<cr>')
map('', '<leader>fb', "<cmd>lua require'telescope.builtin'.buffers{initial_mode='normal'}<cr>")
vimp.nnoremap({"silent"}, "<leader>a", [[:ArgWrap<CR>]])

--=========================
--    RELOAD CONF
-- r = reload vimrc plugin
--=========================
vimp.nnoremap('<Leader>re', function()
  -- Remove all previously added vimpeccable maps
  vimp.unmap_all()
  -- Unload the lua namespace so that the next time require('vimrc') or require('vimrc.X') is called
  -- it will reload the file
  -- By default, require() will only load the lua file the first time it is called and thereafter
  -- pull it from a cache
  Utils.unload_lua_namespace('config')
  -- Make sure all open buffers are saved
  vim.cmd('silent wa')
  -- Execute our vimrc lua file again to add back our maps
  require('config')

  print("Reloaded conf!")
end)

-- ===============
-- dashboard
-- ===============
g['dashboard_default_executive'] = 'telescope'

-- ===============
-- Lightline
-- =============== 
opt('o', 'showmode', false) -- option made redundant by lightline -> disabled
g['lightline'] = {
	['colorscheme']= 'palenight',
	['active']= {
		['left']= {{'mode'} , {'gitbranch', 'modified', 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_status'}, {'readonly', 'absolutepath'}},
		['right']= {{'lineinfo'}, {'percent'}, {'fileencoding', 'fileptype'}}
	},
	['component_function']= {
		['gitbranch']= 'FugitiveHead'
	},
	['mode_map']= {
		['n']= 'N',
		['i']= 'I',
		['R']= 'R',
		['R'] = 'R',
		[ 'v' ] = 'V',
		[ 'V' ] = 'VL',
		[ "<C-v>" ]= 'VB',
		[ 'c' ] = 'C',
		[ 's' ] = 'S',
		[ 'S' ]= 'SL',
		[ "<C-s>" ]= 'SB',
		[ 't' ]= 'T',
	 },
 }
vim.fn['lightline#coc#register']()

-- ==========
-- Neuron
-- ==========
require'neuron'.setup {
	virtual_titles = true,
	mappings = true,
	run = nil, -- function to run when in neuron dir
	neuron_dir = '~/zettelkasten', 
	leader = " ", -- the leader key for all mappings, remember with 'go zettel'
}

-- ==========
-- Lua
-- ==========
g['lua_syntax_fancynotequal'] = 1
g['lua_syntax_fold_function'] = 1
g['lua_syntax_fold_control'] = 1
g['lua_syntax_fold_comment'] = 1
