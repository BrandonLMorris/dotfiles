" The vimrc of Brandon L Morris
" echo ">^.^<"



" Abbreviate sout to Java print statement
iabb sout System.out.println()<Left>


" Number of lines that are checked for set commands
set modeline
set modelines=5


" Tab completion settings
set wildmenu                      " Show possible completions on command line
set wildmode=list:longest,full    " List all options and complete
set wildignore=*.class,*.o,*~,*.pyc,.git,third_party,node_modules " Ignore certain files in 
                                                                  " tab completion


" --- Normal Mode Settings ---
set relativenumber    " Lines display relative rather than absolute number
set guioptions=       " Sets GUI options (none, CLI FTW)
set ruler             " Displays current position in buffer
set cursorline        " Higlights current line
set visualbell t_vb=  " Turns off beep and flash for bell
set mouse=a           " Enables mouse for scroll and positioning
set colorcolumn=100   " Highlights the specific column
set scrolloff=8       " Minimum lines to keep above/below cursor (for scrolling)
" j and k move screen line, not 'file' line
map j gj
map k gk



" --- Search Settings ---
set incsearch         " Highlights searches as they are typed
set smartcase         " If no lowercase, case-insensitive. If caps, case-sensitive
set smartindent       " Automatic indentation
set cinkeys-=0#       " Keeps smartindent from messing up indent after typing a '#'
set hlsearch          " Highlights all matches to the search
set linebreak         " Handles soft wrapping for long lines
nmap <leader>h :nohlsearch<CR>


" --- Indentation Settings ---
set autoindent        " Maintains current indent on next line
set expandtab         " <Tab> will insert spaces
set smarttab          " Similar to expandtab
set tabstop=2         " Sets how many spaces upon tab
set shiftwidth=2      " Number of spaces to use for each step of autoindent
set pastetoggle=<F2>  " Key that toggles paste option



" --- Whitespace Settings ---
set list              " Displays whitespace
set listchars=tab:·\ ,eol:¬,trail:⋅,extends:❯,precedes:❮  " Sets whitespace characters
set showbreak=↪
" Allows backspace over over autoindent, line breaks, and start of insert
set backspace=indent,eol,start
set noesckeys         " Disables function keys that start with <Esc> in insert mode


" --- Buffer Saving Settings ---
set noswapfile        " Disables swap file
set nobackup          " Disables backing up a file before writing
set autoread          " Re-reads a file that has been edited outside of vim
set hidden            " Buffers become hidden (not unloaded) when abondoned


" --- MAPPINGS!!! ---

" Convenience mappings for switching buffers
map <leader>] :bnext<CR>
map <leader>[ :bprev<CR>
nmap <leader>e :e#<CR>
nmap <leader>p :CtrlPBuffer<CR>

" Create split AND move focus to it
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" Shorten moving between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Open/close folds with <space>
nnoremap <space> za

" Delete line with -
nnoremap - dd

" Copy line below like in IntelliJ
nnoremap <c-d> yyp

" Delete line in insert mode
inoremap <c-d> <esc>ddi

" Open and read .vimrc on the fly
:nnoremap <leader>ev :vsplit $MYVIMRC<cr><c-w>l
:nnoremap <leader>sv :source $MYVIMRC<cr>

" I would map leader to , if it didn't screw up finds
":nnoremap <c-;> ,

" Quick exit of insert mve
inoremap jk <esc>



" I always, ALWAYS hit ":W" instead of ":w"
command! Q q
command! W w


set t_Co=256
syntax on
let base16colorspace=256 " Access colors present in 256 colorspace
colorscheme jellybeans

" --- Pathogen Settings ---
filetype off
call pathogen#infect()
filetype plugin indent on
set nocompatible
set encoding=utf-8
" -------------------------

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
" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

augroup markdown
  autocmd!
  autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn
              \ if &ft =~# '^\%(conf\|modula2\)$' |
              \   set ft=markdown |
              \ else |
              \   setf markdown |
              \ endif
augroup markdown END


" --- NERDTree Settings ---
" NERDTree toggle mapping
map <C-n> :NERDTreeToggle ~/Dropbox/Programming<CR>
" Closes vim if NERDTree is only window open
augroup nerdtree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

  " Opens NERDTree automatically if no file is specified
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup END
