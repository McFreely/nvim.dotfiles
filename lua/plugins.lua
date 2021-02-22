vim.cmd [[packadd packer.nvim]]

-- TODO Configure better lazy-loading
return require('packer').startup(function()
	-- Packer can manage itself as an optional plugin
	use {'wbthomason/packer.nvim', opt=true}
	use 'svermeulen/vimpeccable' -- write config in lua
	-- Style
	use 'ryanoasis/vim-devicons'
	use 'tiagofumo/vim-nerdtree-syntax-highlight'
	use 'itchyny/lightline.vim'
	use 'https://github.com/McFreely/palenight.vim.git'
	use 'glepnir/dashboard-nvim'
	-- Editing
	use 'tpope/vim-commentary'
	use 'Raimondi/delimitMate'
	use 'tpope/vim-surround'
	use 'wellle/targets.vim'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-endwise'
	use 'FooSoft/vim-argwrap'
	-- Shell
	use "tpope/vim-eunuch"
	-- Navigation
	use "preservim/nerdtree"
	use 'tpope/vim-vinegar'
	-- AutoComplete
	use { 'neoclide/coc.nvim', branch = 'release' }
	use 'josa42/vim-lightline-coc'
	use 'honza/vim-snippets'
	-- Telescope
	use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
	-- PKB
	use {'McFreely/neuron.nvim', branch = "unstable"}
	-- Journal
	use 'junegunn/goyo.vim'
	use 'junegunn/limelight.vim'
	--==================
	-- Languages
	--==================
	-- Markdown
	use 'godlygeek/tabular'
	use 'plasticboy/vim-markdown'
	use 'dhruvasagar/vim-table-mode'
	-- Javascript
	use 'yuezk/vim-js'
	use 'HerringtonDarkholme/yats.vim'
	use 'leafgarland/typescript-vim'
	-- Other
	use 'tbastos/vim-lua'
	use 'rust-lang/rust.vim'
	use 'cespare/vim-toml'
	use 'pearofducks/ansible-vim'
end)
