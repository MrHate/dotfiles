" Plugin installation (require https://github.com/junegunn/vim-plug)
call plug#begin()
Plug 'scrooloose/nerdcommenter'
Plug 'sickill/vim-monokai'
call plug#end()

" Plugin configurations
" ==================================================================
" nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1

" ==================================================================
" End of plugin configurations

" Netrw cfg
nn <silent><C-X><C-A> :Lex<CR>
let g:netrw_banner = 0
let g:netrw_winsize = 24
aug netrw_autoclose
  au! WinLeave * if getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
  au! WinEnter * if getbufvar(winbufnr(winnr('#')), "&filetype") == "netrw"|call feedkeys("\<c-w>=")|endif
aug END

" Emacs sequelae
inoremap <C-A> <C-O>I
inoremap <C-E> <C-O>A
inoremap <C-Y> <C-O>p
inoremap <C-D> <C-O>x
inoremap <C-N> <C-O>j
inoremap <C-P> <C-O>k
inoremap <C-F> <C-O>l
inoremap <C-B> <C-O>h
inoremap <C-F> <C-O>l
inoremap <C-B> <C-O>h
inoremap <C-O> <C-O>O
nn <C-N> gj
nn <C-P> gk
vn <C-N> gj
vn <C-P> gk

" Search highlight and clear
set hls
nn <silent><C-K> :let @/ = ""<CR>

" Modes
syntax enable
set nocp nowrap
set ruler number showmode
set is
set tabstop=2 shiftwidth=2 expandtab
set tw=0

if(has('nvim'))
  set laststatus=0
  set guicursor="\<Esc>[3 q"
endif

if(has('clipboard'))
  set clipboard=unnamedplus
endif

" Colors
hi LineNr ctermfg=grey
hi Comment ctermfg=22
hi Pmenu ctermbg=darkgrey ctermfg=black 
hi PmenuSel ctermbg=lightgrey ctermfg=black

" Theme
colorscheme monokai
