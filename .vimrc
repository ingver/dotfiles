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
"Plugin 'mhinz/vim-startify'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'vim-scripts/Smart-Tabs'
Plugin 'tpope/vim-sensible'
Plugin 'vim-scripts/taglist.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-airline/vim-airline'
"Plugin 'sirver/ultisnips'
"Plugin 'OmniSharp/omnisharp-vim'

" Themes
Plugin 'crusoexia/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'whatyouhide/vim-gotham'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 


""" Color theme

syntax enable
set background=dark
"colorscheme solarized
"colorscheme gotham
colorscheme monokai



""" Tabs for indentaion, spaces for alignment 

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
" shiftwidth and tabstop must be equal
" otherwise vim will not insert <Tab> at the start of a line
set shiftwidth=4
set tabstop=4
set cindent
set cinoptions=(0,u0,U0


""" vim-session config
let g:session_autosave = 'no'
let g:session_lock_enabled = 0


""" taglist config

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 40 



""" Syntastic config
let g:syntastic_cpp_compiler_options = ' -std=c++1y '

""" YouCompleteMe config
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

""" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

""" Mappings

map <f2> :noh<CR>
map <f3> :NERDTreeToggle<CR>
map <f4> :TlistToggle<CR>
map <f8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
"nmap <c-h> <c-w>h
"nmap <c-j> <c-w>j
"nmap <c-k> <c-w>k
"nmap <c-l> <c-w>l
nmap ,t :tabnew<CR>
"nnoremap J :tabn<CR>
"nnoremap K :tabp<CR>
nnoremap <c-j> :tabn<CR>
nnoremap <c-k> :tabp<CR>
inoremap <Esc> <Esc>`^
imap 0A <ESC>ki
imap 0B <ESC>ji
imap 0C <ESC>li
imap 0D <ESC>hi
map <Leader>e :tabe $MYVIMRC<CR>
map <Leader>s :source $MYVIMRC<CR>
map Q hl
map q: hl
:nnoremap <F5> "=strftime("%H:%M:%S")<CR>P
:inoremap <F5> <C-R>=strftime("%H:%M:%S")<CR>
nnoremap <Leader>s :SaveSession 
nnoremap <Leader>l :OpenSession 

""" Misc

set incsearch
set hlsearch
set nowrap
set textwidth=79
set number
set numberwidth=3
set ignorecase
" force to not highlight background of matching bracket
hi MatchParen cterm=bold ctermbg=none ctermfg=green



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
