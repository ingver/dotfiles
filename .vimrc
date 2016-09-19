""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

""" Plugins

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-sensible'
Plugin 'vim-scripts/taglist.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'vim-airline/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'Raimondi/delimitMate'
Plugin 'bronson/vim-trailing-whitespace'
"Plugin 'Shougo/neocomplete'
"Plugin 'sirver/ultisnips'

" Multilang
"Plugin 'sheerun/vim-polyglot'

" C#
"Plugin 'OmniSharp/omnisharp-vim'

" Javascript
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'gavocanov/vim-js-indent'
Plugin 'moll/vim-node'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
"Plugin 'flowtype/vim-flow'

" Themes
Plugin 'crusoexia/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dracula/vim'

call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""" Color theme

syntax enable
set background=dark
"colorscheme solarized
"colorscheme gotham
colorscheme monokai
"colorscheme dracula


""" vim-session config
let g:session_autosave = 'yes'
let g:session_lock_enabled = 0


""" taglist config

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 40

""" Neocomplete config
"let g:acp_enableAtStartup = 1
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#dictionary#dictionaries = {
    "\ 'default' : '',
    "\ 'vimshell' : $HOME.'/.vimshell_hist',
    "\ 'scheme' : $HOME.'/.gosh_completions'
        "\ }
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""" Syntastic config
let g:syntastic_cpp_compiler_options = ' -std=c++1y '
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint', 'jshint']


""" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

""" delimitMate
let delimitMate_expand_cr = 1


""" Mappings

"" F's
map <F2> :noh<CR>
map <F3> :SyntasticToggle<CR>
map <F4> :TlistToggle<CR>
nnoremap <F5> "=strftime("%H:%M:%S")<CR>P
inoremap <F5> <C-R>=strftime("%H:%M:%S")<CR>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"" tabs
nmap ,t :tabnew<CR>
nnoremap <C-J> :tabn<CR>
nnoremap <C-K> :tabp<CR>
nnoremap <PageUp> :tabm -1<CR>
nnoremap <PageDown> :tabm +1<CR>
nnoremap <C-Q> :tabc<CR>

"" sessions
nnoremap <Leader>s :SaveSession
nnoremap <Leader>l :OpenSession

map <Leader>e :tabe $MYVIMRC<CR>
map <Leader>s :source $MYVIMRC<CR>
inoremap <Esc> <Esc>`^
map <C-N> :NERDTreeToggle<CR>
nmap <C-S> :w<CR>
vmap <C-S> <Esc><C-S>gv
imap <C-S> <Esc><C-S>



""" Misc

set incsearch
set hlsearch
set nowrap
set textwidth=79
set number
set numberwidth=3
set ignorecase
" force to not highlight background of matching bracket
hi MatchParen cterm=Underline ctermbg=None ctermfg=Cyan
hi Search cterm=Underline ctermbg=None ctermfg=Magenta
" autodelete trailings
autocmd BufWritePre <buffer> :FixWhitespace



""" Setting colorcolumn

if exists('+colorcolumn')
  set colorcolumn=81
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

if has("statusline")
  set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif



""" Allow to copy/paste between VIM instances

vmap <Leader>y :w! ~/.vbuf<CR>
nmap <Leader>y :.w! ~/.vbuf<CR>
nmap <Leader>p :r ~/.vbuf<CR>
