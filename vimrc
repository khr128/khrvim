call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nu

map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>
