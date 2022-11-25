"""""""""""""""" misc
:set nocompatible
filetype plugin on
syntax on

"""""""""""""""" Line numbers
:set number
:set relativenumber

"""""""""""""""" TAB related
:set autoindent
:set tabstop=4 " show existing tabs with 4 spaces width
:set shiftwidth=4 " when indenting with '>', use 4 spaces width
:set expandtab " when pressing tab, insert 4 spaces
:set softtabstop=4 " Sets the number of columns for a TAB.
:set mouse=a

""""""""""""""""" Plugin Manager
call plug#begin('~/.vim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better highlighting through tree-sitter
Plug 'https://github.com/vimwiki/vimwiki' " personal vim wiki
Plug 'https://github.com/airblade/vim-gitgutter' " shows git diff
Plug 'https://github.com/tpope/vim-fugitive' " Git plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " interactive Unix filter for command-line that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc.
Plug 'junegunn/fzf.vim'

call plug#end()

"""""""""""""""""" NERDTree configs
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

"""""""""""""""""" Tagbar config
nmap <F8> :TagbarToggle<CR>pc
