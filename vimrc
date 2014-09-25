"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Necessary for cool features of vim
set nocompatible

" Sets how many lines of history VIM has to remember and undolevels
set history=1000
set undolevels=1000

" Enable syntax highlighting
syntax enable

" If you want mouse support
" set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gVIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVim remove unnecessary borders
set go-=mr
set go-=T

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 256 colors in vim
set t_Co=256

" Set the title of the terminal
set title

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"Always show current position
set ruler

"This is the most awesome configurationa ever, is shows both
"the absolute and relative numbering together to make jumps
"easier
set relativenumber
set number

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Mark the current line
set cursorline

" For the vimdow
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>Search Related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When searching try to be smart about cases
set smartcase
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>Fold
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding is enabled by default
set foldenable

" Only very nested blocks will be folded
set foldlevelstart=2 " 99 means everything will open up

" The maximum nesting level
set foldnestmax=10

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>Key bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
let g:mapleader = " "

" I want to force myself to use j,k,l
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" The annoying jump over lines is removed
nnoremap j gj
nnoremap k gk

"mapping for the windows
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nmap <C-w>_ :split<CR>
nmap <C-w>\ :vsplit<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language
set fileencoding=utf-8
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set to auto read when a file is changed from the outside
set autoread

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set noundofile

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab "Converts tabs into space characters

" Textwrap at 80 haracters
set tw=100
set wrap

" Tab completion
set wildmenu
set wildmode=list:longest,full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Indentation
set autoindent "Auto indent
set smartindent "Smart indent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

"Show editor mode
set showmode

" Format the status line
set statusline=\ FILE:\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h

" Height of the command bar
set cmdheight=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Specific
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug
call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'kien/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-pandoc/vim-pantondoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'rking/ag.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'Lokaltog/vim-easymotion'
" Plug 'vim-scripts/a.vim'
" Plug 'kana/vim-textobj-entire' " Entire file as a text object

call plug#end()

"Adding omnicomplete
set ofu=syntaxcomplete#Complete

" Ctrl.p
set runtimepath^=~/.vim/bundle/ctrlp.vim

" For supertab
let g:SuperTabDefaultCompletionType="context"

" Ctrl P on the top rather than bottom
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open

" Ultisnips configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-)>"
let g:UltiSnipsJumpBackwardTrigger="<c-(>"
let g:UltiSnipsEditSplit="vertical"

" YCM shortcuts
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
noremap <leader>o :YcmCompleter GoToDefinition<CR>
noremap <leader>c :YcmDiags<CR>
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_file = 1

" Emmet
let g:user_emmet_leader_key='<c-e>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" airline
let g:airline_powerline_fonts = 1

" NERDTree
noremap <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> My precious
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" File based
"""""""""""""""

" For JSON files pretty print them
noremap <leader>pp :%!python -m json.tool<CR>

" For hex Files
noremap <leader>x :%!xxd<CR>
noremap <leader>nx :%!xxd -r<CR>

" for spelling options when writing
noremap <silent> <leader>s :set spell!<CR>
set spelllang=en_gb

" vim unicode
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif


" Utilities
"""""""""""""""

" after a search, this mapping removes the highlighing
nnoremap <silent> <leader>/ :nohlsearch<CR>

" white spaces
noremap <silent> <leader>w :set list!<CR>

" Highlight the last selected text area
noremap <leader>h '[v']<CR>

" Paste toggle (,p)
"set pastetoggle=<leader>p
noremap <leader>p :set invpaste paste?<CR>

" Paste from clipboard
noremap <leader>v :set paste<CR>"+p:set nopaste<CR>

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Plugin Keybindings
"""""""""""""""""""""""""
" For ack
noremap <leader>a :Ag

" For ack
noremap <leader>t :TlistToggle<CR>

" Sudo this file if opened without root priveileges
noremap su <Esc>:w !sudo tee % >/dev/null<CR>

"For Fixing whitespace
noremap <leader>fw :FixWhitespace<CR>

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" Miscellaneous
""""""""""""""""

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Autorun Commands
"""""""""""""""""""

" Search for any .vimsettings files in the path to the file.
" Source them if you find them.
function! ApplyLocalSettings(dirname)
    " Don't try to walk a remote directory tree -- takes too long, too many
    " what if's
    let l:netrwProtocol = strpart(a:dirname, 0, stridx(a:dirname, "://"))
    if l:netrwProtocol != ""
        return
    endif

    " Convert windows paths to unix style (they still work)
    let l:curDir = substitute(a:dirname, "", "/", "g")
    let l:parentDir = strpart(l:curDir, 0, strridx(l:curDir, "/"))
    if isdirectory(l:parentDir)
        call ApplyLocalSettings(l:parentDir)
    endif

    " Now walk back up the path and source .vimsettings as you find them. This
    " way child directories can 'inherit' from their parents
    let l:settingsFile = a:dirname . "/.vimsettings"
    if filereadable(l:settingsFile)
        exec ":source " . l:settingsFile
    endif
endfunction
autocmd! BufEnter * call ApplyLocalSettings(expand("<afile>:p:h"))

" This is the group of commands that autorun
augroup configgroup
    autocmd!

    " Switch off auto comment
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Conditional commands
    " autocmd FileType java setlocal noexpandtab

    " Strip Trailing Whitespace
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.html
                    \:call FixWhitespace

    " Return to last edit position when opening files (You want this!)
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif
augroup END
