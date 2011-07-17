set nocompatible
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme khr
"set hidden
set number
set ruler
set cul
set incsearch
set tabstop=2
set shiftwidth=2
set foldenable
set foldmethod=syntax
set foldcolumn=5
set formatoptions=tcqan2w
set autoindent
set copyindent
set showmatch
set nowrap
set listchars=extends:>
set listchars=precedes:<
set cindent
set sessionoptions=buffers,folds,globals,options,resize,winpos,tabpages,sesdir
set tildeop
set expandtab
set list
set diffopt+=vertical

set title
set nobackup
set noswapfile

"Folding mappings
vnoremap <Space> zf
imap <C-Space> <C-X><C-I>
map <C-Space> zc
map <C-\> zk
map <C-Z> zj

vnoremap <C-K><C-Space> :s:^://:<CR>
vnoremap <C-K><C-U> :s:^//::<CR>
vnoremap <C-K><C-K> :s:^:#:<CR>
vnoremap <C-K><C-L> :s:^#::<CR>

vnoremap <C-K><C-P> "+gP
vnoremap <C-K><C-Y> "+y

"Search for a pattern in files
map <C-F4> :grep -rsw regexp --include=*.rb */*
map <F4> :Ack -wiu -G [\.]rb pattern app

map <F5> :GundoToggle<CR>
imap <F5> <Esc>:GundoToggle<CR>

"Line numbering
map <F11> :set nu<CR>
map <C-F11> :set rnu<CR>
map <S-F11> :set nonu<CR>

"Fold methods
map <F12> :set foldmethod=manual<CR>
map <C-F12> :set foldmethod=syntax<CR>

map <F12> :set foldmethod=manual<CR>
map <C-F12> :set foldmethod=syntax<CR>

"Relative sizing of two horizontal windows
map ,- <C-W>-
map ,+ <C-W>+
"Relative sizing of two vertical windows
map ,. <C-W><
map ,, <C-W>>
map ,<Leader> <C-W>w<C-W>\|

"Find next ruby symbol (use F19 to highlight all)
map ,: /\(\:\)\@<!\:\<.\{-}\><CR>
"Find next instance variable (use F19 to highlight all)
map ,@ /\(@\)\@<!@\<.\{-}\><CR>


"Toggle regexp selection highlighting
map ,h :set hls<CR>
map ,x :set nohls<CR>

map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>
map <C-C> <C-W>c<CR>
imap <C-C> <C-W>c<CR>

"Split and jump to tag
map <C-K><C-J> :vsplit<CR><C-W>l:tjump <C-R><C-W><CR>z.
imap <C-K><C-J> <Esc>:vsplit<CR><C-W>l:tjump <C-R><C-W><CR>z.


map ,s :UniteWithCursorWord -no-quit line<CR>
imap ,s  <Esc>:UniteWithCursorWord -no-quit line<CR>

map ,t :tabnew.<CR>
imap ,t  <Esc>:tabnew.<CR>
map ,p "0p
imap jj <Esc>
nnoremap ; :
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


filetype plugin indent on

let g:SimplenoteUsername = "abusik@hotmail.com"
let g:SimplenotePassword = "notational_velocity"

"Aligning bars
map <Leader><Bar> :Tab /<Bar><CR>
imap <Leader><Bar> <Esc>:Tab /<Bar><CR>
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
 
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
