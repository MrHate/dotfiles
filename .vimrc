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

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/deoplete-clangx'
  let g:deoplete#enable_at_startup = 1

  " Completion relevant configurations
  set completeopt-=preview
  inoremap <expr> <TAB> pumvisible() ? "\<C-N>" : "\<TAB>"
  inoremap <expr> <S-TAB> pumvisible() ? "\<C-P>" : ""
  inoremap <expr> <ESC> pumvisible() ? "\<ESC>\<ESC>" : "\<ESC>"

endif

call plug#end()

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
if(has('nvim'))
  set laststatus=0
  set guicursor="\<Esc>[3 q"
endif

" Bridge between clipboards of macOS and vim
set clipboard=unnamed

" Colors
hi LineNr ctermfg=grey
hi Comment ctermfg=22
hi Pmenu ctermbg=darkgrey ctermfg=black 
hi PmenuSel ctermbg=lightgrey ctermfg=black
