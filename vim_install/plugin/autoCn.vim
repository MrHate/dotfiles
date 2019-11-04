" Auto trigger <C-n> for keyword completion when entering a word in Insertion
" mode.

if exists('g:did_autocn_loaded') || v:version <700
	finish
endif
let g:did_autocn_loaded = 1

" LOAD GUARD ========================================

let s:autocn_trigger_chars = 2
let s:autocn_state = 1

set completeopt=menuone,noinsert,noselect
" So confusing when searching files included
set complete-=i

function s:popUpKeywordCompletion()
	if s:autocn_state && len(matchstr(strpart(getline('.'), 0, col('.') - 1), '\k*$')) > s:autocn_trigger_chars
		let s:autocn_state=0
		if !pumvisible()
			call feedkeys("\<C-n>",'tn')
			return 1;
	  endif
	endif
	let s:autocn_state=1
endfunction

au TextChangedI * call s:popUpKeywordCompletion()

inoremap <expr> <tab> pumvisible()?'<C-N>':'<C-I>'
inoremap <expr> <S-tab> pumvisible()?'<C-P>':'<S-tab>'
