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

" ctrl-k to clean search highlight
nn <silent><C-K> :let @/ = ""<CR>

syntax enable
set nocp nowrap
set ruler number showmode
set is hls
set autoindent cindent
set tabstop=2 shiftwidth=2 expandtab
set tw=0

if(has('nvim'))
  set laststatus=0
  set guicursor="\<Esc>[3 q"
endif

if(has('clipboard'))
  set clipboard=unnamed
endif

hi LineNr ctermfg=grey
hi Comment ctermfg=22
hi Pmenu ctermbg=darkgrey ctermfg=black 
hi PmenuSel ctermbg=lightgrey ctermfg=black
