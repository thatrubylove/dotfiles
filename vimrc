" ========================================================================
" Vundle stuff
" ========================================================================
set nocompatible " Required by vundle
filetype off     " Required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My bundles
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Colors
Plugin 'nanotech/jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Use the colorscheme from above
colorscheme jellybeans

" ========================================================================
" Ruby stuff
" ========================================================================
syntax on                 " Enable syntax highlighting

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set mouse=""
set history=500		" keep 500 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set autoindent
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set autoread
set wmh=0
set viminfo+=!
set guioptions-=T
set guifont=Triskweline_10:h10
set et
set sw=2
set smarttab
set noincsearch
set ignorecase smartcase
set laststatus=2  " Always show status line.
set relativenumber
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent " always set autoindenting on
set bg=light

" Enable built-in matchit plugin
runtime macros/matchit.vim
" ================

let mapleader = ","

" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^

" simple load vimrc
nmap <silent> <leader>v :sp $MYVIMRC<CR>

" simple load nerdtree
nmap <silent> <leader>nt :NERDTreeToggle<CR>

" simple load rails server
nmap <silent> <leader>rs :!rails s<CR>

" simple migrate
nmap <silent> <leader>rdb :!rake db:migrate<CR>

" simple open db/schema
nmap <silent> <leader>sc :sp db/schema.rb<CR>

" Set the tag file search order
set tags=./tags;

" Use _ as a word-separator
" set iskeyword-=_

" Make the omnicomplete text readable
:highlight PmenuSel ctermfg=black

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" Highlight the status line
highlight StatusLine ctermfg=blue ctermbg=yellow

" Format xml files
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.

set nofoldenable " Say no to code folding...

command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e


" Disable Ex mode
map Q <Nop>

" Disable K looking stuff up
map K <Nop>

au BufNewFile,BufRead *.txt setlocal nolist " Don't display whitespace

" Better? completion on command line
set wildmenu
" What to do when I press 'wildchar'. Worth tweaking to see what feels right.
set wildmode=list:full

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

inoremap <Tab> <C-P>

let g:CommandTMaxHeight=50
let g:CommandTMatchWindowAtTop=1

" Don't wait so long for the next keypress (particularly in ambigious Leader
" situations.
set timeoutlen=500


" Set gutter background to black
highlight SignColumn ctermbg=black

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Make it more obvious which paren I'm on
hi MatchParen cterm=none ctermbg=black ctermfg=yellow

" ========================================================================
" End of things set by me.
" ========================================================================

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " By default, vim thinks .md is Modula-2.
  autocmd BufNewFile,BufReadPost *.md set filetype=markdown

  " Wrap the quickfix window
  autocmd FileType qf setlocal wrap linebreak

  augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
  augroup END
  " Don't go past 100 chars on levelup:
  autocmd BufNewFile,BufRead /Users/ben/code/levelup/*.rb set colorcolumn=100

  " Remove trailing whitespace on save for ruby files.
  au BufWritePre *.rb :%s/\s\+$//e

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

  augroup END

  augroup rubystuff
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
    autocmd FileType ruby,eruby,yaml setlocal path+=lib
    autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
    " Make ?s part of words
    autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

  augroup END

  augroup xmpfilter
    autocmd!
    autocmd FileType ruby nmap <buffer> <D-m> <Plug>(xmpfilter-mark)
    autocmd FileType ruby nmap <buffer> <D-r> <Plug>(xmpfilter-run)
  augroup END

  augroup markdown
    au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown
    autocmd FileType markdown set wrap linebreak nolist
  augroup END

endif " has("autocmd")
