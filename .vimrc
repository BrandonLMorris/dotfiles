filetype off
call pathogen#infect()
filetype plugin indent on
set nocompatible
set encoding=utf-8


" Abbreviate sout to Java print statement
iabb sout System.out.println("


" Number of lines that are checked for set commands
set modeline
set modelines=5


" Set tabcompletion
set wildmenu " Show possible completions on command line
set wildmode=list:longest,full " List all options and complete
set wildignore=*.class,*.o,*~,*.pyc,.git,third_party,node_modules " Ignore certain files in tab-completion

" Lines display relative rather than absolute number
set relativenumber
" Sets GUI options (none, CLI FTW)
set guioptions=
" Displays current position in buffer
set ruler
" Higlights current line
set cursorline
" Turns off beep and flash for bell
set visualbell t_vb=
" Enables mouse for scroll and positioning
set mouse=a
" Highlights the specific column
set colorcolumn=100
" Minimum lines to keep above/below cursor (for scrolling)
set scrolloff=8



" Highlights searches as they are typed
set incsearch
" If no lowercase, case-insensitive. If caps, case-sensitive
set smartcase
" Automatic indentation
set smartindent
" Keeps smartindent from messing up indent after typing a '#'
set cinkeys-=0#
" Highlights all matches to the search
set hlsearch
" Handles soft wrapping for long lines
set linebreak

" Maintains current indent on next line
set autoindent
" <Tab> will insert spaces
set expandtab
" Similar to expandtab
set smarttab
" Sets how many spaces upon tab
set tabstop=2
" Number of spaces to use for each step of autoindent
set shiftwidth=2
" Key that toggles paste option
set pastetoggle=<F2>
" Sets options based on filetype (not mine)
autocmd FileType html,htmldjango setlocal shiftwidth=2 tabstop=2


" Displays whitespace
set list
" Sets whitespace characters
set listchars=tab:·\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
" Allows backspace over over autoindent, line breaks, and start of insert
set backspace=indent,eol,start
" Disables function keys that start with <Esc> in insert mode
set noesckeys


" Disables swap file
set noswapfile
" Disables backing up a file before writing
set nobackup


" Re-reads a file that has been edited outside of vim
set autoread
" Buffers become hidden (not unloaded) when abondoned
set hidden
" thanks Ian, http://statico.github.com/vim.html
"   Convenience mappings for switching buffers
map <leader>] :bnext<CR>
map <leader>[ :bprev<CR>
nmap <leader>e :e#<CR>
nmap <leader>p :CtrlPBuffer<CR>
" Keyboard mapping for cursor keys on broken terminals
" [works for XTerminals - 970818]
"map <ESC>[A <Up>
"map <ESC>[B <Down>
"map <ESC>[C <Right>
"map <ESC>[D <Left>
"imap <ESC>[A <Up>
"imap <ESC>[B <Down>
"imap <ESC>[C <Right>
"imap <ESC>[D <Left>


" Just for convenience
map j gj
map k gk
nmap <leader>h :nohlsearch<CR>

" I always, ALWAYS hit ":W" instead of ":w"
command! Q q
command! W w

" Fix Background color erase in tmux/screen
"set t_ut=
set t_Co=256
syntax on
"set background=dark
"let g:badwolf_tabline = 2
"let g:badwolf_html_link_underline = 0
"let g:badwolf_css_props_highlight = 1
let base16colorspace=256 " Access colors present in 256 colorspace
colorscheme jellybeans


" --- Plug.vim setup --- 
call plug#begin('~/.vim/plugged')

" Make sure to use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultrisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

call plug#end()

" ----------------------


" --- Syntastic setup ---
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args="--select=W402,W403,W404,W405,W801,W802,W803,W804,W805,W806"
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'javascript'],
                           \ 'passive_filetypes': ['html'] }

set laststatus=2
let g:airline_enable_syntastic=1
let g:airline_enable_branch=1
"let g:airline_theme='badwolf'

autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn
            \ if &ft =~# '^\%(conf\|modula2\)$' |
            \   set ft=markdown |
            \ else |
            \   setf markdown |
            \ endif

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree toggle mapping
map <C-n> :NERDTreeToggle ~/Dropbox/Programming<CR>
" Closes vim if NERDTree is only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Opens NERDTree automatically if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
