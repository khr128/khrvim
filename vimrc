set nocompatible
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme khr
syntax on
set nobackup
set noswapfile
set hidden
set ignorecase smartcase
set number
set ruler
set cul
set incsearch
set tabstop=2
set shiftwidth=2
set foldenable
set foldmethod=syntax
set foldcolumn=5
set formatoptions=tcq
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

"Git mappings
map <F2> :Gstatus<CR>:only<CR>zR
imap <F2> <Esc>:Gstatus<CR>:only<CR>zR

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

"Toggle autocopy to clipboard
map <C-K><C-B> :set guioptions-=a <CR>
map <C-K><C-A> :set guioptions+=a<CR>

"Relative sizing of two horizontal windows
map ,- <C-W>-
map ,+ <C-W>+
"Relative sizing of two vertical windows
map ,. <C-W><
map ,, <C-W>>
map ,<Leader> <C-W>w<C-W>\|

"Find next ruby symbol (use :set hls to highlight all)
map ,: /\(\:\)\@<!\:\<.\{-}\><CR>
"Find next instance variable (use :set hls to highlight all)
map ,@ /\(@\)\@<!@\<.\{-}\><CR>


"Toggle regexp selection highlighting
map ,h :set hls<CR>
map ,x :set nohls<CR>

map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>
map <C-C> <C-W>c
imap <C-C> <C-W>c

"Split and jump to tag
map <C-K><C-J> :vsplit<CR><C-W>l:tjump <C-R><C-W><CR>z.
imap <C-K><C-J> <Esc>:vsplit<CR><C-W>l:tjump <C-R><C-W><CR>z.

map ,s :UniteWithCursorWord -no-quit line<CR>
imap ,s <Esc>:UniteWithCursorWord -no-quit line<CR>

map ,s :UniteWithCursorWord -no-quit line<CR>
imap ,s  <Esc>:UniteWithCursorWord -no-quit line<CR>

map <C-K><C-T> :tabnew<CR>
imap <C-K><C-T> <Esc>:tabnew<CR>
map ,t :tabnew.<CR>
imap ,t  <Esc>:tabnew.<CR>
map ,p "0p

map ,h :help <C-R><C-W><CR>
imap ,h :help <Esc><C-R><C-W><CR>

"Fold all folds but the one that has the current line
map ,z <Esc>zMzv<CR>
imap ,z <Esc>zMzv<CR>

"Toggle between implementation and spec files
map ,a :vsplit<CR><C-W>l:Rrefresh<CR>:A<CR>
imap ,a <Esc>:vsplit<CR><C-W>l:Rrefresh<CR>:A<CR>

"Open ActiveRecord association in split window
map ,g :vsplit<CR><C-W>w:Rrefresh<CR>gf<CR>
imap ,g <Esc>:vsplit<CR><C-W>w:Rrefresh<CR>gf<CR>

imap jj <Esc>
nnoremap ; :
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

let g:netrw_liststyle=3
let g:CommandTMaxFiles=20000

"Save views with folds
au BufWinLeave *.* mkview!
au BufWinEnter *.* silent loadview

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

let g:LustyJugglerShowKeys = 'a'
