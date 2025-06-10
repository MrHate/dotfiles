inoremap <C-A> <C-O>I
inoremap <C-E> <C-O>A
inoremap <C-Y> <C-O>p
inoremap <C-D> <C-O>x
inoremap <C-N> <C-O>j
inoremap <C-P> <C-O>k
inoremap <C-F> <C-O>l
inoremap <C-B> <C-O>h
inoremap <C-O> <C-O>O
nn <C-N> gj
nn <C-P> gk
vn <C-N> gj
vn <C-P> gk

" Disable annoying help mistriggering.
nn <F1> <nop>

" ctrl-k to clean search highlight
nn <silent><C-K> :let @/ = ""<CR>

syntax enable
set nocp nowrap
set ruler number showmode
set is hls
filetype indent on
" set foldmethod=indent
set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile Makefile* set noexpandtab
set tw=0

if(has('nvim'))
  set laststatus=0
  set guicursor="\<Esc>[3 q"
endif

if(has('clipboard'))
  set clipboard=unnamed
endif

hi LineNr ctermfg=grey
hi Comment ctermfg=cyan
hi Pmenu ctermbg=darkgrey ctermfg=black 
hi PmenuSel ctermbg=lightgrey ctermfg=black
hi BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufRead,BufNewFile *py,*pyw set tabstop=8
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab

" Highlight func names.
au BufRead,BufNewFile *.c syn match cCustomFunc "\<\h\w*\>\(\s\|\n\)*("me=e-1
au BufRead,BufNewFile *.c hi def link cCustomFunc Function
au BufRead,BufNewFile *.c hi Function ctermfg=DarkRed
