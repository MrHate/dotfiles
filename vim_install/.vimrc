" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
filetype off

set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"let g:airline_theme='papercolor'

Plugin 'The-NERD-tree'
"nmap <F1> :NERDTreeToggle<CR>
"imap <F1> <Esc>:NERDTreeToggle<CR>
nn <F12> :NERDTreeToggle<CR>
let NERDTreeWinSize=35

Plugin 'scrooloose/nerdcommenter'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"Plugin 'rizzatti/dash.vim'

Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
set background=dark

"colorscheme molokai
"let g:rehash256 = 1
"let g:molokai_original = 1

syntax enable
set ruler
set nowrap
set showmode
set clipboard=unnamed
set is
"set hls

" Control highlight for searching
autocmd cursorhold * set nohlsearch
"nmap <silent> <esc> :set nohlsearch<cr>
"noremap <silent> <esc> :<esc>set nohlsearch<cr>
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

"Syntax for .yaml and .yml
"source file: https://www.vim.org/scripts/script.php?script_id=739 
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

"posva/vim-vue somehow not so good but slow
"seems consider vue as html looks well 
autocmd BufRead,BufNewFile *.vue setfiletype html

"autocmd BufRead,BufNewFile *.cc setfiletype cpp

"set mouse=a
set nocp
set number
set ts=2 sw=2 expandtab

"Correct indent config
set si
set noet

"nmap <F2> :<ESC>gT
"nmap <F3> :<ESC>gt
"nmap <F4> :tabnew<CR>
"map <C-A> <C-W>
"imap { {}<ESC>i<CR><ESC>O

" prevent to trigger F1 help menu in accident
inoremap <F1> <nop>

" Fast tab select
nn <F1> 1gt
nn <F2> 2gt
nn <F3> 3gt
nn <F4> 4gt
nn <F5> 5gt
nn <F6> 6gt
nn <F7> 7gt
nn <F8> 8gt
nn <F9> 9gt
nn <F10> :tabnew<CR>
" <F11> is used by MacOS to view desktop
" <F12> is used to trigger NerdTree
