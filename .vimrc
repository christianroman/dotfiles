" use pathogen for plugins
set nocompatible

call pathogen#runtime_append_all_bundles()
filetype off
syntax on
filetype plugin indent on

"-------------------------------------------
"                 OPTIONS
"-------------------------------------------

" ================ General Config ====================
set backspace=indent,eol,start		"Allow backspace in insert mode
set history=1000									"Store lots of :cmdline history
set autoread											"Reload files changed outside vim
set nu														"Show line numbers, same as above
set scrolloff=3										"Start scrolling when the cursor is within 3 lines of the edge.
set title													"Show title of the file in vim title bar
set ls=2													"Show status bar with file path and name
set showcmd												"Displays an incomplete command in the lower right of the window
set ruler													"Show the cursor vertical and horiz position in the lower right corner, or right status line
set textwidth=0
set wrapmargin=0
set nolist
set showmode        			" show the current mode of the editor
set history=1000    			" keep the last 1000 commands and last 1000 search patterns
set selectmode=mouse
set mouse=a            			" enable mouse usage
set undolevels=1000      		" use many muchos levels of undo
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*.log,*.bson,*.png,*.jpg,*.jpeg,*.gif,temp/**,tmp/**,*.pyc,*.swp,*.bak,*.exe,*.dll,*$py.class
set visualbell           		" don't beep
set noerrorbells         		" don't beep
set virtualedit=onemore    		" allow cursor one line beyond last line
set backspace=indent,eol,start  " cut blank spaces at the front of the line, end of line, and before the insert cursor when starting insert mode.
set guioptions+=a
set clipboard=unnamed

set timeoutlen=1000 ttimeoutlen=0

let mapleader = ","
let g:mapleader = ","

" ================ USER INTERFACE ==================

set so=7
set wildmenu
set magic
set showmatch

set nostartofline

" ================ COLORSCHEME =====================

" colorscheme hybrid
colorscheme dracula
set t_Co=256
set encoding=utf8
set ffs=unix,dos,mac
set cul

" ================ MOVEMENT AND FORMATTING =====================

set expandtab
set smarttab

set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set ttyfast            " smoother changes
set ttyscroll=3        " turn off scrolling
"set lazyredraw
"set list listchars=tab:\ \ ,trail:·

set lbr									"Linebreak on 500 chars
set tw=500

set autoindent
set smartindent
set nowrap

set number

" ================ Folds =====================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"================= NERDTree ==================
let NERDTreeIgnore=['\~$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

"================ REMAPPING ===================

nnoremap <CR> :noh<CR><CR>
nnoremap ; :

"=========== Omni ============

set completeopt=longest,menuone

"=========== SPECIAL FILES ===========

autocmd BufRead,BufNewFile Vagrantfile set ft=ruby

autocmd FileType * setlocal colorcolumn=0
autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete

" Markdown
autocmd BufNewFile,BufRead *.txt,*.markdown,*.md setlocal ft=markdown
autocmd FileType rst setlocal expandtab sw=4 ts=4 sts=4
autocmd FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags

" HTML
autocmd FileType html setlocal sw=2 ts=2 sts=2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Python
autocmd FileType python setlocal sw=4 ts=4 sts=4
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" CSS
autocmd FileType css setlocal sw=2 ts=2 sts=2
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

" JavaScript
autocmd FileType javascript setlocal sw=4 ts=4 sts=4
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
 
" Ruby
autocmd FileType ruby,eruby setlocal sw=2 ts=2 sts=2
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  
" XHTML
autocmd FileType xhtml setlocal sw=2 ts=2 sts=2

" XML
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"================ Vim indent guides ==============

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=237

"let g:indent_guides_color_change_percent = 10
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"================== SuperTab ====================
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabContextDefaultCompletionType="<C-X><C-O>"

"================== Alternate ===================
autocmd FileType objc let g:alternateExtensions_h = "m"
autocmd FileType objc let g:alternateExtensions_m = "h"
