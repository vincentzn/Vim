"plugin setting(vundle)

set nocompatible
filetype off                  " required
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 "Install Plugin 'YouCompleteME'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'scrooloose/nerdtree'
 "" The following are examples of different formats supported.
 "" Keep Plugin commands between vundle#begin/end.
 "" plugin on GitHub repo
 "Plugin 'tpope/vim-fugitive'
 "" plugin from http://vim-scripts.org/vim/scripts.html
 "Plugin 'L9'
 "" Git plugin not hosted on GitHub
 "Plugin 'git://git.wincent.com/command-t.git'
 "" git repos on your local machine (i.e. when working on your own plugin)
 "Plugin 'file:///home/gmarik/path/to/plugin'
 "" The sparkup vim script is in a subdirectory of this repo called vim.
 "" Pass the path to set the runtimepath properly.
 "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 "" Install L9 and avoid a Naming conflict if you've already installed a
 "" different version somewhere else.
 "Plugin 'ascenator/L9', {'name': 'newL9'}
 "" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line


 
"basic setting
 
set modeline
set clipboard=unnamedplus
"y和p直接使用系统剪切寄存器"+
set number
"行号
set smartindent
set shiftwidth=4
set softtabstop=4
set noexpandtab
"don't replace tab with blank
set hlsearch
"highlight matched word in search
set completeopt=menuone,longest
syntax on
"自动语法高亮

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
"key map

imap [[ {<cr>}<esc>O
"输入成对大括号并换行
imap ]] <esc>ddko
"删除当前行并与上一行对齐
vmap <F2> "+y
imap <F3> "+p
let mapleader=','
nnoremap <leader>d :NERDTreeToggle<CR>
