syntax on
filetype plugin indent on
set backspace=indent,eol,start
set nopaste
"setlocal spell spelllang=fr
set nocompatible
set rtp+=~/.vim/bundle/vundle/
"set fillchars+=stl:\ ,stlnc:\
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
"Bundle 'klen/python-mode'
"Bundle 'davidhalter/jedi-vim'
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'

" The plugins you install will be listed here
Plugin 'klen/python-mode'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'davidhalter/jedi-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" The rest of your config follows here
augroup vimrc_autocmds
    autocmd!
    "highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" Powerline setup
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14
set guifont=Input\ Sans\ Mono\ 14
" set guifont=DejaVu\ Sans\ Mono
set laststatus=2

" Lets create a shortcut to toggle NERDTree
map <F2> :NERDTreeToggle<CR>
" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold    
endif

let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
" We will deactivate the default completion of rope as we prefer the jedi
" completion
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Jedi is by default automatically initialized
let g:jedi#auto_initialization = 1

" VIM option not automatically initialized
let g:jedi#auto_vim_configuration = 0

" Autocompletion
let g:jedi#completions_enabled = 1
let g:jedi#popup_on_dot = 1

"You can make jedi-vim use tabs when going to a definition etc:
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"

"Jedi selects the first line of the completion menu: for a better typing-flow and usually saves one keypress.
let g:jedi#popup_select_first = 1

" Ctrl-Space for completions. Heck Yeah!
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

"colorscheme pychimp
set term=xterm-256color
" set term=base16
"set background=dark
"colorscheme jellybeans
colorscheme harlequin
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
" Print a vertical line at width 120 char with no specified color
highlight ColorColumn none
"highlight ColorColumn guibg=Gray

" Enable LaTeX math
let g:vim_markdown_math=1

" Highlight YAML frontmatter as used by Jekyll
let g:vim_markdown_frontmatter=1

" Enable Tabs in VIM
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
nnoremap <Space> gt
