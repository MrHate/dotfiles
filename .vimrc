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
inoremap <C-O> <C-O>O
nn <C-A> I
nn <C-E> A
nn <C-Y> p
nn <C-N> j
nn <C-P> k
nn <C-F> l
nn <C-B> h
nn <C-X><C-F> :e 
" Uncheck 'Use Option as Meta key' first
inoremap ƒ <C-O>e
inoremap ∫ <C-O>b

" Headache when touching F1 by mistake
nn <F1> <nop>
inoremap <F1> <nop>

" Another tiresome from Macbook touchbar
inoremap <F2> <nop>
inoremap <F3> <nop>
inoremap <F4> <nop>
inoremap <F5> <nop>
inoremap <F6> <nop>
inoremap <F7> <nop>
inoremap <F8> <nop>
inoremap <F9> <nop>
inoremap <F10> <nop>
inoremap <F11> <nop>
inoremap <F12> <nop>

" Chinese input replacement
inoremap · `
inoremap （ (
inoremap ） )

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

