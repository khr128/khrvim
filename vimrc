call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
colorscheme khr
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
set nowrap
set listchars=extends:>
set listchars=precedes:<
set cindent
set sessionoptions=buffers,folds,globals,options,resize,winpos,tabpages,sesdir
set tildeop
set expandtab
set list
set diffopt+=vertical

vnoremap <C-K><C-Space> :s:^://:<CR>
vnoremap <C-K><C-U> :s:^//::<CR>
vnoremap <C-K><C-K> :s:^:#:<CR>
vnoremap <C-K><C-L> :s:^#::<CR>

vnoremap <C-K><C-P> "+gP
vnoremap <C-K><C-Y> "+y

map <F12> :set foldmethod=manual<CR>
map <C-F12> :set foldmethod=syntax<CR>

map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>

map ,t <Esc>:tabnew.<CR>
imap ,t :tabnew.<CR>
map ,p "0p
imap jj <Esc>
