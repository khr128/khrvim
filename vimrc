set nocompatible
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme khr
syntax on
set guifont=Menlo:h14
set history=128
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
set foldmethod=indent
set foldcolumn=5
set formatoptions=tcq
set autoindent
set copyindent
set showmatch
set nowrap
set cindent
set sessionoptions=buffers,folds,globals,options,resize,winpos,tabpages,sesdir
set tildeop
set expandtab
set diffopt+=vertical
set switchbuf=useopen,usetab,newtab

set title
set nobackup
set noswapfile

"Folding mappings
vnoremap <Space> zf
imap <C-Space> <C-X><C-I>
map <C-Space> zc
map <C-\> zk
map <C-Z> zj

"Commenting
vnoremap <C-K><C-Space> :s:^://:<CR>
vnoremap <C-K><C-U> :s:^//::<CR>
vnoremap <C-K><C-K> :s:^:#:<CR>
vnoremap <C-K><C-L> :s:^#::<CR>
vnoremap <C-K><C-Tab> :s:<\([^<]*\)>:<!-- \1 -->:gc<CR>
vnoremap <C-K><S-Tab> :s:<!-- \([^<]*\) -->:<\1>:gc<CR>

"Abbreviations
iab edb <% debugger %>
iab deb debugger
iab jdb debugger;

"Git mappings
map <F2> :Gblame<CR>
imap <F2> <Esc>:Gblame<CR>

"Put the output of the last g command into a window
nnoremap <silent> <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR>

"Search for a pattern in files
map <F4> :Ack  <C-R><C-W><CR>
imap <F4> <Esc>:Ack <C-R><C-W><CR>

map <F5> :GundoToggle<CR>
imap <F5> <Esc>:GundoToggle<CR>

map ,r :Ggrep <C-R><C-W><CR>:copen<CR>
map <F6> :Ggrep <C-R><C-W><CR>:copen<CR>
imap <F6> <Esc>:Ggrep <C-R><C-W><CR>:copen<CR>

map <F7> :copen<CR>
imap <F7> <Esc>:copen<CR>
map ,c :cclose<CR>
map <S-F7> :cclose<CR>
imap <S-F7> <Esc>:cclose<CR>

map ,s :Fg<CR>
imap <F8> <Esc>:Fg<CR>

"Line numbering
map ,t :set nu<CR>
map <F11> :set nu<CR>
imap <F11> <Esc>:set nu<CR>

map ,d :set rnu<CR>
map <C-F11> :set rnu<CR>
imap <C-F11> <Esc>:set rnu<CR>

map <S-F11> :set nu<CR>:set nonu<CR>

"fold methods
map <c-f12> :set foldmethod=manual<cr>
map <f12> :set foldmethod=syntax<cr>

"coffeescript
map <f13> :coffeecompile<cr>
imap <f13> <esc>:coffeecompile<cr>

"toggle autocopy to clipboard
map <c-k><c-b> :set guioptions-=a <cr>
map <C-K><C-A> :set guioptions+=a<CR>

"Toggle regexp selection highlighting
map ,h :set hls<CR>
map ,x :set nohls<CR>

map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>
map <C-C> :bd<CR>
imap <C-C> <Esc>:bd<CR>

"Ruby syntax checking
map <C-K><C-S> :w !ruby -c<CR>
imap <C-K><C-S> <Esc>:w !ruby -c<CR>

"Xml view
map <C-K><C-X> :silent %!xmllint --encode UTF-8 --format -<CR>
imap <C-K><C-X> :silent %!xmllint --encode UTF-8 --format -<CR>

"Split and jump to tag
map <C-K><C-J> :vsplit<CR><C-W>l:tjump <C-R><C-W><CR>z.
imap <C-K><C-J> <Esc>:vsplit<CR><C-W>l:tjump <C-R><C-W><CR>z.

map ,p "0p

"Fold all folds but the one that has the current line
map ,z <Esc>zMzvz.<CR>
imap ,z <Esc>zMzvz.<CR>

"Toggle between implementation and spec files
map ,a :vsplit<CR><C-W>l:Rrefresh<CR>:A<CR>
imap ,a <Esc>:vsplit<CR><C-W>l:Rrefresh<CR>:A<CR>

"Open ActiveRecord association in split window
map ,g :vsplit<CR><C-W>w:Rrefresh<CR>gf<CR>
imap ,g <Esc>:vsplit<CR><C-W>w:Rrefresh<CR>gf<CR>

"NERDTree
map ,n :NERDTreeFind<CR>
imap ,n <Esc>:NERDTreeFind<CR>

imap jj <Esc>
imap hh <Esc>

"Javascript
imap ,, ({<CR>});<Esc>O
map ,, i({<CR>});<Esc>O
imap ,' ('')<Esc>hi
imap ," get('')<Esc>hi
map ,{ i{{}}<Esc>hi
imap ,{ {{}}<Esc>hi
map ,f i<Space>function() {<CR>}<Esc>O
imap ,f <Space>function() {<CR>}<Esc>O

"nnoremap ; :
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
cnoremap <C-A> <Up>

let g:netrw_liststyle=3
let g:netrw_preview=1
let g:CommandTMaxFiles=20000

"Save views with folds
au BufWinLeave *.* mkview!
au BufWinEnter *.* silent loadview

au BufRead,BufNewFile *.handlebars,*.hbs,*.hjs set ft=handlebars

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


command! -nargs=* Ff call <SID>Ff(<f-args>)

function! s:ShowInQuickFix(lines, format)
    " write quickfix errors to a temp file
    let l:quickfix_tmpfile_name = tempname()
    exe "redir! > " . l:quickfix_tmpfile_name
    silent echon a:lines
    redir END
    " read in the errors temp file
    let l:efm = &efm
    exe 'set efm='.a:format
    execute "silent! cfile " . l:quickfix_tmpfile_name
    let &efm = l:efm

    " open the quicfix window
    botright copen
    let s:qfix_win = bufnr("$")

    " delete the temp file
    call delete(l:quickfix_tmpfile_name)
endfunction

function! s:Ff(file_regex, content_match)
  let l:cmd_output = system('find -E . -type f -regex "'.a:file_regex.'" -exec gawk "BEGIN{c=0}; /'.a:content_match.'/ {printf \"%s %d %s\n\", FILENAME, FNR, \$0; c += 1}; END{print c}" {} +')
  if strlen(l:cmd_output) > 0
    call s:ShowInQuickFix(l:cmd_output, '%f\ %l\ %m')
  endif
endfunction

command! Fg call <SID>Fg()
function! s:Fg()
  let l:cmd_output = ''

  let l:current_file_name = ''
  redir => l:current_file_name
  silent echo expand('%:p')
  redir END

  let l:word_under_cursor = expand("<cword>")
  redir => l:cmd_output
  exe 'silent g/'.l:word_under_cursor.'/nu'
  redir END

  let l:result_list = split(l:cmd_output, '\n')
  call map(l:result_list, 'substitute(v:val, "^\\s\\+", "", "")')
  call map(l:result_list, 'l:current_file_name . " " . v:val')
  let l:cmd_output = join(l:result_list, '\n')

  if strlen(l:cmd_output) > 0
    call s:ShowInQuickFix(l:cmd_output, '%f\ %l\ %m')
  endif
endfunction

let g:LustyJugglerShowKeys = 'a'

set statusline=%n\ %F[%l,%c]%m%r%h%w%{fugitive#statusline()}%=%{strftime(\"%m/%d/%Y\ %H:%M\")}
set title
set titlestring=%F\ %{strftime(\"%m/%d/%Y\ %H:%M\")}
set laststatus=2

let g:syntastic_enable_signs=1
let g:syntastic_enable_balloons=0
let g:syntastic_ruby_exec = "/usr/local/var/rbenv/shims/ruby"
let g:syntastic_javascript_jshint_conf="~/.jshintrc"
let g:syntastic_javascript_checker = "jshint"
let g:jshint_highlight_color = "Red"
