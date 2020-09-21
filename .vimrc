" ==================
" .vimrc
" ==================

" Plugins installed by vim-plug(https://github.com/junegunn/vim-plug)
call plug#begin()

Plug 'preservim/nerdtree'
nn <silent><C-X><C-A> :NERDTreeToggle<CR>
let NERDTreeWinSize=35
let g:NERDTreeQuitOnOpen=1

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1

call plug#end()

" Emacs sequelae
inoremap <C-A> <C-O>0
inoremap <C-E> <C-O>$
inoremap <C-Y> <C-O>p
inoremap <C-D> <C-O>x
inoremap <C-N> <C-O>j
inoremap <C-P> <C-O>k
inoremap <C-F> <C-O>l
inoremap <C-B> <C-O>h
inoremap <C-F> <C-O>l
inoremap <C-B> <C-O>h
nn <C-A> I
nn <C-E> A
nn <C-Y> p
nn <C-N> j
nn <C-P> k
nn <C-F> l
nn <C-B> h
nn <C-X><C-F> :e 

" Headache when touching F1 by mistake
inoremap <F1> <nop>
nn <F1> <nop>

" Modes
syntax enable
set nocp nowrap
set ruler number showmode
set is
set tabstop=2 shiftwidth=2 expandtab

" bridge between clipboards of macOS and vim
set clipboard=unnamed

" line number color
highlight LineNr ctermfg=grey

