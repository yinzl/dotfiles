"""""""""""""""""""""""""""""""""""""""""""""""""
"common setting
set nocompatible
syntax on 
set ruler 
set nobackup
set tabstop=2
set shiftwidth=2
filetype on 
set autoindent
set nu
filetype indent plugin on
set showcmd
set visualbell
set splitbelow
set splitright
set laststatus=2
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
"common function
"-auto reload .vimrc
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }


""""""""""""""""""""""""""""""""""""""""""""""""""
"keybings
let mapleader = "\<space>"
:imap kj <Esc>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nmap <Leader><Leader> V
vmap <Leader>y "+y
vmap <Leader>p "+p
nnoremap <Leader>o :CtrlP<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <F5> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""
"vim bundle
"Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to " auto-approve removal
"
"see :h vundle for more details or wiki for FAQ
"Put your non-Plugin stuff after this line
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'marijnh/tern_for_vim'
Bundle 'dkprice/vim-easygrep'
Bundle 'vim-airline/vim-airline'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'rdnetto/YCM-Generator' 
Bundle 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'


call vundle#end()            
filetype plugin indent on    
""""""""""""""""""""""""""""""""""""""""""""""""""
"budle setting
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" :UltiSnippetsEdit to split your window
let g:UltiSnippetsEditSplit="vertical"

"NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Emmet 
"enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:solarized_termcolors=256
if has('gui_running')
	set background=light
	set guifont=Monaco:h20
else
	set background=dark
endif
colorscheme solarized
"date 2016/6/30
