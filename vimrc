set nocompatible
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme khr
set hidden
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

vnoremap <C-K><C-Space> :s:^://:<CR>
vnoremap <C-K><C-U> :s:^//::<CR>
vnoremap <C-K><C-K> :s:^:#:<CR>
vnoremap <C-K><C-L> :s:^#::<CR>

vnoremap <C-K><C-P> "+gP
vnoremap <C-K><C-Y> "+y

map <F5> :GundoToggle<CR>
imap <F5> <Esc>:GundoToggle<CR>

map <F12> :set foldmethod=manual<CR>
map <C-F12> :set foldmethod=syntax<CR>

map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>

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
