execute pathogen#infect()

" Enable line numbers
se nu

" Use space as the leader instead of '\'
let mapleader=" "

" Ignore case when searching unless I capitalize
set ignorecase
set smartcase

" Highlight the line the cursor is on
set cursorline

" Highlight column 80 as a visual boundary
set colorcolumn=80

" Always show status line and command line
set ls=2

" Fix backspace quirk so delete/backspace key deletes character to left of
" cursor.
set backspace=2

" Turn on syntax highlighting
syntax on

" Enable filetype plugin
filetype plugin indent on

" Highlight search results
set hlsearch

" Unsets and clears the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" Show first matching search result as the search pattern is typed
set incsearch

" Remap VIM 0 to first non-blank character
map 0 ^

" No sound on errors
set noerrorbells
set novisualbell

" Turn backup off
set nobackup
set nowb
set noswapfile

" Remove trailing whitespace before writing the file on all files except
" git commit message files.
autocmd! BufWritePre *\(.git/COMMIT_EDITMSG\)\@<! :StripWhitespace

" Hacky fix to prevent '#' from being set to first column. See Glenn's comment
" on accepted answer:
"       http://stackoverflow.com/questions/2360249/vim-automatically-removes-indentation-on-python-comments
inoremap # X<BS>#

" Tab related settings
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Set font face and size
set guifont=Monaco:h13

" Status line stuff
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column

" Solarized Colorscheme Settings
syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

let g:syntastic_python_checkers=['flake8']

" Setup for ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Tell Ctrl-P to ignore .pyc files
let g:ctrlp_custom_ignore = {
    \ 'dir': 'node_modules\|build\|dist\|local',
    \ 'file': '\.pyc$'
    \ }

" Map ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" Open NERTree automatically when vim starts if no files are open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if NERDTree is only window left open
autocmd bufenter * if (winnr() == 1 && exists('b:NERDTreeType') && b:NERDTreeType == 'primary') | q | endif
