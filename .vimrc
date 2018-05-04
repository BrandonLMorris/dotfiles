" The vimrc of Brandon L Morris

set cm=blowfish2

" Fold code based on the language's syntax
set foldmethod=indent


" Number of lines that are checked for set commands
set modeline
set modelines=5


" Tab completion settings
set wildmenu                      " Show possible completions on command line
set wildmode=list:longest,full    " List all options and complete
set wildignore=*.class,*.o,*~,*.pyc,.git,third_party,node_modules " Ignore certain files in 
                                                                  " tab completion

" --- Abbreviations ---
" {{{
" Abbreviate sout to Java print statement (works correctly with space)
iabb sout System.out.println();<Left><Left><C-R>=Eatchar('\s')<CR>

" Abbreviate aae to Assert.assertEquals() for junit tests
iabb aae Assert.assertEquals();<Left><Left><C-R>=Eatchar('\s')<CR>

iab texframe 
\<CR>\begin{frame}
\<CR>\frametitle{}
\<CR>
\<CR>\end{frame}<Up><C-R>=Eatchar('\s')<CR>

iab texitems 
\<CR>\begin{itemize}
\<CR>\item
\<CR>\end{itemize}<Up>


" Similar abreviation with if
" iabb if if (<C-R>=Eatchar('\s')<CR>
" Similar abbreviation with {}
"iabb { {}<Left><CR><C-R>=Eatchar('\n')<CR><Up><Tab>
"}}}


" --- Normal Mode Settings ---
" {{{
set relativenumber    " Lines display relative rather than absolute number
set guioptions=       " Sets GUI options (none, CLI FTW)
set ruler             " Displays current position in buffer
set cursorline        " Higlights current line
set visualbell t_vb=  " Turns off beep and flash for bell
set mouse=a           " Enables mouse for scroll and positioning
set colorcolumn=79    " Highlights the specific column
set scrolloff=8       " Minimum lines to keep above/below cursor (for scrolling)
set scroll=15         " Srolling moves 15 lines instead of 30
" j and k move screen line, not 'file' line
map j gj
map k gk
" }}}


" --- Search Settings ---
" {{{
set incsearch         " Highlights searches as they are typed
set ignorecase
set smartcase         " If no lowercase, case-insensitive. If caps, case-sensitive
set smartindent       " Automatic indentation
set cinkeys-=0#       " Keeps smartindent from messing up indent after typing a '#'
set hlsearch          " Highlights all matches to the search
nmap <leader>h :nohlsearch<CR>
" }}}


" --- Indentation Settings ---
" {{{
set autoindent        " Maintains current indent on next line
set expandtab         " <Tab> will insert spaces
set smarttab          " Similar to expandtab
set tabstop=2         " Sets how many spaces upon tab
set shiftwidth=2      " Number of spaces to use for each step of autoindent
set pastetoggle=<F2>  " Key that toggles paste option
" }}}


" --- Whitespace Settings ---
" {{{
set list              " Displays whitespace
set listchars=tab:·\ ,eol:¬,trail:⋅,extends:❯,precedes:❮  " Sets whitespace characters
set showbreak=↪
" Allows backspace over over autoindent, line breaks, and start of insert
set backspace=indent,eol,start
set noesckeys         " Disables function keys that start with <Esc> in insert mode
set textwidth=0       " Sets the width of the text
set wrap              " Enables soft wrapping
set linebreak         " Handles wrapping at certain characte/s
" }}}


" --- Buffer Saving Settings ---
" {{{
set noswapfile        " Disables swap file
set nobackup          " Disables backing up a file before writing
set autoread          " Re-reads a file that has been edited outside of vim
set hidden            " Allows modified buffers in the background
" }}}


" --- MAPPINGS!!! ---
" {{{
" Convenience mappings for switching buffers
map <leader>] :bnext<CR>
map <leader>[ :bprev<CR>
nmap <leader>e :e#<CR>
nmap <leader>p :CtrlPBuffer<CR>

" Create split AND move focus to it
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

nnoremap <leader>o :make open<CR>

" Shorten moving between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Automagically add closing braces when typing opening brace
" TODO: automatically put in newline and move cursor up
" inoremap { {}<Esc>i

" Open/close folds with <space>
nnoremap <space> zA

" Scroll with -
nnoremap - dd

" Scroll down with \d
" nnoremap <leader>d <c-d>

" Copy line below like in IntelliJ
" nnoremap <c-d> yyp

" Delete line in insert mode
" inoremap <c-d> <esc>ddi

" Open and read .vimrc on the fly
:nnoremap <leader>ev :vsplit $MYVIMRC<cr><c-w>l
:nnoremap <leader>sv :source $MYVIMRC<cr>

" I would map leader to , if it didn't screw up finds
":nnoremap <c-;> ,

" Quick exit of insert mode
" inoremap kj <esc>

" Toggle mapping and function of the quickfix window
nnoremap <leader>q :call QuickfixToggle()<cr>
let g:quickfix_is_open = 0
function! QuickfixToggle()
  if g:quickfix_is_open
    cclose
    let g:quickfix_is_open = 0
    execute g:quickfix_return_to_window . "wincmd w"
  else
    let g:quickfix_return_to_window = winnr()
    copen 
    let g:quickfix_is_open = 1
  endif
endfunction

" Permits eating the trailing whitespace (in an abbreviation)
function! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc


" I always, ALWAYS hit ":W" instead of ":w"
command! Q q
command! W w
" }}}


" Color Settings
" {{{
set t_Co=256
syntax on
" let base16colorspace=256 " Access colors present in 256 colorspace
" colo seoul256
" }}}

" Automatically spellcheck for markdown and latex
augroup spellcheck
  autocmd!
  autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us textwidth=80 colorcolumn=80
  autocmd BufRead,BufNewFile *.markdown setlocal spell spelllang=en_us textwidth=80 colorcolumn=80
  autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us textwidth=80 colorcolumn=80
  autocmd BufRead,BufNewFile *.wiki setlocal spell spelllang=en_us textwidth=80 colorcolumn=80
augroup END


" Vimscript file settings
" {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

augroup filetype_vimwiki
  autocmd!
  "autocmd FileType vimwiki echo "hey there!"
augroup END


" C++ File settings
" {{{
augroup cpp
  autocmd!
  autocmd BufNewFile,BufRead *.cpp,*.cc iabb st std::
augroup END
" }}}


" Python File settings
" {{{
augroup python
  autocmd!
  autocmd FileType python setlocal foldmethod=indent
augroup END
" }}}


" crontab File settings
" {{{
augroup crontabsettings
  autocmd!
  autocmd FileType crontab setlocal nobackup nowritebackup
augroup END
" }}}


" Necessary to get YouCompleteMe working at startup
" {{{
augroup ycm
  autocmd!
  autocmd VimEnter * :call youcompleteme#Enable()
augroup END
" }}}


" Unfold everything on start-up
" {{{
augroup folding
  autocmd!
  autocmd BufWinEnter * :normal zR
augroup END
" }}}


" Highlight occurances of word under cursor
" Obtained from Dr. Overbey, who found it on Stack Overflow
" https://stackoverflow.com/questions/1551231/highlight-variable-under-cursor-in-vim-like-in-netbeans
" {{{
augroup highlightocc
  autocmd!
  autocmd CursorMoved * exe printf('match Underlined /\V\<%s\>/', escape(expand('<cword>'),'/\'))
augroup END
" }}}

" Remove inactive buffers
function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    "Below originally inspired by Hara Krishna Dara and Keith Roberts
    "http://tech.groups.yahoo.com/group/vim/message/56425
    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
            " bufno exists AND isn't modified AND isn't in the list of buffers
            " open in windows and tabs
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction

" --- Pathogen Settings ---
" {{{
filetype off
filetype plugin on
call pathogen#infect()
filetype plugin indent on
set nocompatible
set encoding=utf-8
" }}}


" --- Plug.vim Settings ---
" {{{
call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim' " Distraction-free writing
" Plug 'eugen0329/vim-esearch'
Plug 'junegunn/seoul256.vim' " Great color theme
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultrisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'Valloric/YouCompleteMe'
Plug 'christoomey/vim-tmux-navigator'

" StackAnswers - Search Stack Overflow inside vim
" Plug 'https://github.com/james9909/stackanswers.vim.git'
" let g:stack_filter = "accepted"

" vim-gitgutter
Plug 'airblade/vim-gitgutter'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
set runtimepath+=~/.fzf

" Scala support
" Plug 'derekwyatt/vim-scala'

" Fuzzy file finding
Plug 'kien/ctrlp.vim'

" Task management with TaskWarrior
Plug 'blindFS/vim-taskwarrior'

" vimwiki
Plug 'vimwiki/vimwiki'

" vim calendar
Plug 'itchyny/calendar.vim'

" delimitMate: autocompletes quotes, parens, brackets, etc
Plug 'raimondi/delimitmate'

" matchtag: highlight matching HTML tag under cursor
Plug 'gregsexton/matchtag'

" matrix screensaver
" Plug 'uguu-org/vim-matrix-screensaver'

" Tab naming with Taboo
Plug 'gcmt/taboo.vim'

" ultisnips
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" Tagbar: show file tags in a sidebar
Plug 'majutsushi/tagbar'

" View/manage github issues
" Plug 'jaxbot/github-issues.vim'

" Extended session management
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" Golang dev stuff
" Plug 'fatih/vim-go'

Plug 'lervag/vimtex'


call plug#end()

" }}}


" --- Syntastic Setting ---
" {{{
" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_java_javac_classpath = ".\n/Users/bmorris/junit-4.12.jar\n../*.java""
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_c_checkers=['gcc']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_scala_checkers=['fsc']
" let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_python_flake8_args="--select=W402,W403,W404,W405,W801,W802,W803,W804,W805,W806"
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['javascript'],
                           \ 'passive_filetypes': ['html'] }

set laststatus=2
let g:airline_enable_syntastic=1
let g:airline_enable_branch=1
"let g:airline_theme='badwolf'

" Toggle the location list with ctl-z
function! ToggleErrors()
  let old_last_winnr = winnr('$')
  lclose
  if old_last_winnr == winnr('$')
    " Nothing was closed, open the syntastic error location panel
    Errors
  endif
endfunction
nnoremap <c-z> :<C-u>call ToggleErrors()<CR>

augroup markdown
  autocmd!
  autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn
              \ if &ft =~# '^\%(conf\|modula2\)$' |
              \   set ft=markdown |
              \ else |
              \   setf markdown |
              \ endif
augroup markdown END
" }}}


" --- NERDTree Settings ---
" {{{
" NERDTree toggle mapping
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc', '__pycache__']

" NEITHER OF THESE WORK :(
" Closes vim if NERDTree is only window open
augroup nerdtree
  autocmd!
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

  " Opens NERDTree automatically if no file is specified
  autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup END

" Set the pwd to the currently open file
augroup setpwd
  autocmd!
  autocmd BufEnter * lcd %:p:h
augroup END
" }}}


" --- YouCompleteMe Settings ---
" {{{
let g:ycm_global_ycm_conf = '~/.ycm_extra_conf'
let g:ycm_confirm_extra_conf = 0
" let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
" let g:ycm_path_to_python_interpreter = '/usr/local/bin/python3'
" 2018-03-22 YCM kept crashing, mysteriously fixed with compiled/run with
" python2.7
let g:ycm_server_python_interpreter = '/usr/local/bin/python2.7'
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python2.7'
" }}}


" --- Powerline Setup ---
" {{{
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
" }}}


" --- CtrlP Settings ---
" {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
" }}}


" --- Calendar.vim Settings ---
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" TODO: Make these toggle instead of just opening
nnoremap <leader>c :Calendar -view=year -split=vertical -width=27<CR>
nnoremap <leader>C :Calendar<CR>


" --- Seoul256 Settings ---
" Just setting the colorscheme, but has to be done after the plugin gets
" initialized
colo seoul256


" --- Vimwiki Settings ---
" {{{
let g:vimwiki_list = [{
  \ 'path': '$HOME/vimwiki/',
  \ 'path_html': '',
  \ 'auto_export': 1,
  \ 'template_path': '$HOME/vimwiki_templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html'}]
  "\ 'custom_wiki2html': '~/customwiki2html.sh'}]
  "\ 'syntax': 'markdown',
  "\ 'ext2syntax': {'.wiki': 'markdown'},
  "\ 'ext': '.md',

" let g:vimwiki_ext2syntax = {'.wiki': 'markdown', '.md': 'markdown'}
" let g:vimwiki_syntax = 'markdown'
" let g:vimwiki_ext = '.md'
let g:vimwiki_global_ext = 0
" }}}


" --- Taboo Settings ---
" {{{
" Save tab names as part of a session
set sessionoptions+=tabpages,globals
let g:taboo_tab_format=" %N%f%m "
let g:taboo_renamed_tab_format=" %N[%l]%m "
" "}}}


" --- Tagbar Settings ---
" {{{
map <c-m> :TagbarToggle<cr>
" }}}


" --- vim-session Settings ---
" Do NOT automatically save/load sessions
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
