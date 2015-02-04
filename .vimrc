	set number
	set ruler
	set showcmd
	set autoindent
	set cursorline
	set nocursorcolumn
	set nocursorline
	syntax sync minlines=256
	
	set smartindent
	set tabstop=4
	set shiftwidth=4
	set expandtab

	set t_Co=256				" 256 colors 
	nmap <C-h> <C-w>h			" control h, j, k, l tab navigation
	nmap <C-j> <C-w>j
	nmap <C-k> <C-w>k
	nmap <C-l> <C-w>l
	syntax enable
	set autoread

	filetype plugin indent on


" COLORS {
"	syntax highlighting groups
	hi Comment      ctermfg=3 cterm=italic
	hi Constant     ctermfg=6
	hi Identifier   ctermfg=1 cterm=bold
	hi Statement    ctermfg=2 cterm=bold
	hi PreProc      ctermfg=5
	hi Type         ctermfg=5 cterm=bold
	hi Special      ctermfg=4
	hi Underlined   ctermfg=7
	hi Ignore       ctermfg=9
	hi Error        ctermfg=9
	hi Todo         ctermfg=15
	hi Normal       ctermfg=none ctermbg=none
	hi NonText      ctermfg=0 ctermbg=none
	hi Directory	ctermfg=12

	hi VertSplit	ctermfg=black
	hi StatusLine	ctermfg=green
	hi StatusLineNC	ctermfg=0 

	hi Folded       ctermbg=0 ctermfg=8

	hi Pmenu        ctermfg=10 ctermbg=0
	hi PmenuSel     ctermfg=0 ctermbg=14
	hi LineNr       ctermfg=0 ctermbg=none
	hi CursorLine   ctermfg=none ctermbg=none cterm=none
	hi CursorLineNr ctermfg=none ctermbg=0 
	hi CursorColumn ctermfg=none ctermbg=0

"	Syntax checker colors
	highlight SignColumn ctermbg=none
	hi SyntasticErrorSign ctermfg=1 ctermbg=none
	hi SyntasticWarningSign ctermfg=3 ctermbg=none
	hi SyntasticStyleErrorSign ctermfg=1 ctermbg=none
	hi SyntasticStyleWarningSign ctermfg=3 ctermbg=none
	hi SyntasticErrorLine ctermfg=none ctermbg=none
	hi SyntasticWarningLine ctermfg=none ctermbg=none
	hi SyntasticStyleErrorLine ctermfg=none ctermbg=none
	hi SyntasticStyleWarningLine ctermfg=none ctermbg=none
	hi SpellBad ctermfg=0 ctermbg=3
	hi SpellCap ctermfg=0 ctermbg=1

"}

" Disable auto compile

let g:syntastic_mode_map = { "mode": "active",
			\ "active_filetypes": [""],
			\ "passive_filetypes": ["java"] }


" WORD PROCESSING {
	set formatoptions=1
	set lbr
	set linebreak
	set wrap
	au BufRead,BufNewFile *.todo setfiletype todo


	cabbr wp call Wp()
	fun! Wp()
		set formatoptions=1
		set lbr
		set linebreak
		set wrap
		set nonumber
		nnoremap j gj
		nnoremap k gk
		nnoremap 0 g0
		nnoremap $ g$
		set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:[+],fb:[x],fb:[-]
		set comments +=fb:-

	endfu

"	Search for selected text, forwards or backwards.
	vnoremap <silent> * :<C-U>
	  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
	  \gvy/<C-R><C-R>=substitute(
	  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
	  \gV:call setreg('"', old_reg, old_regtype)<CR>
	vnoremap <silent> # :<C-U>
	  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
	  \gvy?<C-R><C-R>=substitute(
	  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
"	  \gV:call setreg('"', old_reg, old_regtype)<CR>
"}
"
let g:syntastic_javascript_checkers = ['jshint']

filetype plugin on
au FileType html setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
au FileType js setl ofu=jscomplete#CompleteJS
