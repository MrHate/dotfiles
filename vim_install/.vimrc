:" Configuration file for vim
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

"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_confirm_extra_conf = 0
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"let g:ycm_goto_buffer_command = 'horizontal-split'
"nnoremap <Leader>g :YcmCompleter GoTo<CR>

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"let g:airline_theme='papercolor'

Plugin 'The-NERD-tree'
nmap <F1> :NERDTreeToggle<CR>
imap <F1> <Esc>:NERDTreeToggle<CR>
let NERDTreeWinSize=35

Plugin 'scrooloose/nerdcommenter'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

"repo: https://github.com/tomasr/molokai
colorscheme molokai
set background=dark
let g:rehash256 = 1
let g:molokai_original = 1

syntax enable
set ruler
set nowrap
set showmode
set clipboard=unnamed
set is
"set hls

"" 当光标一段时间保持不动了，就禁用高亮
"autocmd cursorhold * set nohlsearch
"" 当输入查找命令时，再启用高亮
"noremap n :set hlsearch<cr>n
"noremap N :set hlsearch<cr>N
"noremap / :set hlsearch<cr>/
"noremap ? :set hlsearch<cr>?
"noremap * *:set hlsearch<cr>

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
set ts=2
set expandtab

"Correct indent config
set si
set noet
set sw=2

nmap <F2> :<ESC>gT
nmap <F3> :<ESC>gt
nmap <F4> :tabnew<CR>
"map <C-A> <C-W>
"imap { {}<ESC>i<CR><ESC>O
