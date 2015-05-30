"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Necessary for cool features of vim
set nocompatible

" Sets how many lines of history VIM has to remember and undolevels
set history=9999
set undolevels=9999

" Enable syntax highlighting
syntax enable

" If you want mouse support
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug
" Automatic installaion of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.vim/plugged')

" Vim extensions
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/visualrepeat'
Plug 'tomtom/tcomment_vim'
Plug 'sjl/gundo.vim'

" Alignment
Plug 'bronson/vim-trailing-whitespace'
Plug 'godlygeek/tabular'

" Search
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'
Plug 'rking/ag.vim'

" Buffers
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Tags
Plug 'vim-scripts/taglist.vim', { 'on': 'TlistToggle' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags', { 'for': ['c', 'c++', 'python', 'javascript'] }

" Motions
Plug 'Lokaltog/vim-easymotion'

" Code Related
Plug 'Raimondi/delimitMate'                                                     " Close matching parenthesis and the like
Plug 'jeetsukumaran/vim-indentwise'                                             " Move around in indents
Plug 'antoyo/vim-licenses'                                                      " FOSS Licensse
Plug 'scrooloose/syntastic'                                                     " Syntax Checking
Plug 'SirVer/ultisnips'                                                         " Tab Completion of entities
" Plug 'honza/vim-snippets'                                                       " Snippets of code
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }       " Code Completion and Inline errors
Plug 'tpope/vim-dispatch'                                                       " Compile Async
" Plug 'KabbAmine/zeavim.vim'
Plug 'editorconfig/editorconfig-vim'                                            " Different config for different languages

" UI
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'kyuhi/vim-emoji-complete'
" Plug 'vim-scripts/vim-webdevicons'

" Python
Plug 'ivanov/vim-ipython'

" English
Plug 'tpope/vim-abolish'

" Markdown
Plug 'vim-pandoc/vim-pantondoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" HTML
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/closetag.vim'
Plug 'vim-scripts/css_color'
Plug 'edsono/vim-matchit'

" JS
Plug 'marijnh/tern_for_vim' , {'do': 'npm install'}
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'

"Ledger
Plug 'ledger/vim-ledger'
Plug 'tpope/vim-speeddating'

" C-family
Plug 'chazy/cscope_maps'
Plug 'vim-scripts/IndentWise'

" Latex
Plug 'lervag/vimtex'

" Git
Plug 'tpope/vim-fugitive'

" Miscellaneous Tooling
Plug 'tmux-plugins/vim-tmux'
Plug 'neilagabriel/vim-geeknote'

" Vim script in python
" Plug 'amoffat/snake'

call plug#end()

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
set number
" set relativenumber
nnoremap <silent><leader>n :set relativenumber!<cr>

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
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" The annoying jump over lines is removed
nnoremap j gj
nnoremap k gk

"mapping for the windows
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-w>_ :split<CR>
nnoremap <C-w>\ :vsplit<CR>

" Taken from @Tarrasch's vimrc
" Edit vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Quickly change buffers
nnoremap <C-e> :e#<CR>
nnoremap <C-(> :bp<CR>
nnoremap <C-)> :bn<CR>

" Exit
nnoremap <leader>q :q!<CR>

" Insert line
inoremap <C-i> <CR><Esc>O

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

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
set smarttab

" Migrated to editorconfig
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

"Adding omnicomplete
set ofu=syntaxcomplete#Complete

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
" => gVIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVim remove unnecessary borders
if has('gui_running')
  set go-=mr
  set go-=T
  set guifont=Sauce\ Code\ Powerline\ 13
  colorscheme solarized
  set background=light
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Specific
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ack
"""""""""""""
nnoremap <leader>a :Ag

" Supertab
"""""""""""""
let g:SuperTabDefaultCompletionType="context"

" Ctrl.P
"""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ctrl P on the top rather than bottom
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Ultisnips
"""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-)>"
let g:UltiSnipsJumpBackwardTrigger="<c-(>"
let g:UltiSnipsEditSplit="vertical"

" YCM
"""""""""""""
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
nnoremap <leader>o :YcmCompleter GoToDefinition<CR>
nnoremap <leader>g :YcmDiags<CR>
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_file = 1

" Emmet
"""""""""""""
let g:user_emmet_leader_key='<c-e>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Airline
"""""""""""""
let g:airline_powerline_fonts = 1

" Fix for gvim
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" NERDTree
"""""""""""""
nnoremap <C-n> :NERDTreeToggle<CR>

" Taglist
"""""""""""""
nnoremap <C-t> :TlistToggle<CR>

" Ledger
""""""""
nnoremap <leader>d :r !date +\%Y-\%m-\%d<CR>
nnoremap <leader>fd :r !date<CR>

" Licenses
"""""""""""
let g:licenses_authors_name = 'Srijan R Shetty <srijan.shetty+code@gmail.com>'
let g:licenses_copyright_holders_name = 'Srijan R Shetty'

" Tern for vim
"""""""""""""""
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

" Instant markdown
""""""""""""""""""
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

" R files
""""""""""
let g:syntastic_r_lint_styles = 'list(spacing.indentation.notabs, spacing.indentation.evenindent)'

" Easy align
""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" easytags
""""""""""
set tags=./tags;
let g:easytags_dynamic_files = 2

" Tabularize
""""""""""""
" Taken from @timpopes gist https://gist.github.com/tpope/287147
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

" vimtex
"""""""""
let g:vimtex_fold_enabled = 0

" gundo
"""""""
" Time travelling with vim
" All changes are automatically saved; All undos are logged, so we can always move
" back and forth between changes and files without worrying
nnoremap <leader>tt :GundoToggle<CR>
set undofile
set undodir=~/.vim/undodir
au FocusLost * silent! wa

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> My precious
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" File based
"""""""""""""""
" For JSON files pretty print them
nnoremap <leader>pp :%!python -m json.tool<CR>

" For hex Files
nnoremap <leader>x :%!xxd<CR>
nnoremap <leader>nx :%!xxd -r<CR>

" for spelling options when writing
nnoremap <silent> <leader>s :set spell!<CR>
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
nnoremap <silent> <leader>w :set list!<CR>

" Highlight the last selected text area
nnoremap <leader>h '[v']<CR>

" Paste toggle <leader>p
nnoremap <leader>p :set invpaste paste?<CR>

" Paste from clipboard
nnoremap <leader>v :set paste<CR>"+p:set nopaste<CR>

" Copy block of code to clipboard
nnoremap <leader>c "+yi{

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Fixing whitespace
nnoremap <leader>fw :FixWhitespace<CR>

" Sudo this file if opened without root priveileges
nnoremap <leader>su <Esc>:w !sudo tee % >/dev/null<CR>

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

    " Return to last edit position when opening files (You want this!)
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif

    " Add license
    autocmd BufNewFile *.c Mit
    autocmd BufNewFile *.cpp Mit
    autocmd BufNewFile *.js Mit
    autocmd BufNewFile *.py Mit

    " Additional Syntax Highlighting
    au BufEnter *.ejs set filetype=html
    au BufEnter *.mrconfig set filetype=dosini
    au BufEnter *.git set filetype=dosini
    au BufEnter *.vcsh set filetype=dosini
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimental Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
