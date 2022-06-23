" Start of plugin installation
" ======================================================
" Plugins installed by vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'preservim/nerdtree'
nn <silent><C-X><C-A> :NERDTreeToggle<CR>
let NERDTreeWinSize=35
let g:NERDTreeQuitOnOpen=1

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1

Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'

"   set completeopt-=preview
"   inoremap <expr> <TAB> pumvisible() ? "\<C-N>" : "\<TAB>"
"   inoremap <expr> <S-TAB> pumvisible() ? "\<C-P>" : ""
"   inoremap <expr> <ESC> pumvisible() ? "\<ESC>\<ESC>" : "\<ESC>"

call plug#end()
" End of plugin installation
" ======================================================

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
if(has('nvim'))
  set laststatus=0
  set guicursor="\<Esc>[3 q"
endif

" Connect to the clipboard of macOS
set clipboard=unnamed

" Theme
colorscheme onedark

" Colors
hi LineNr ctermfg=grey
" hi Comment ctermfg=22
hi Pmenu ctermbg=darkgrey ctermfg=black 
hi PmenuSel ctermbg=lightgrey ctermfg=black
hi TabLine ctermbg=grey
hi TabLineSel ctermbg=darkgrey
