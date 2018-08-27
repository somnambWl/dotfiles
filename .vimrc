set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" "PLUGINS
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=utf-8

"!!!!! GRUVBOX-COLORSCHEME !!!!!"
colorscheme gruvbox
set background=dark
"!!!!!!!!!!"

"!!!!! AIRLINE-STATUSLINE FOR VIM !!!!!"
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
""let g:airline_section_z = airline#section#create(['%{ObsessionStatus(''$'', '''')}', 'windowswap', '%3p%% ', 'linenr', ':%3v '])
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v '])
"!!!!!!!!!!"

" Powerline setup
""set laststatus=2
""set term=xterm-256color
""set termencoding=utf-8
""set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
""set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'



"!!!!! PEP8 !!!!!"

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"!!!!!!!!!!"

"!!!!! C++ indentation !!!!!"

" These first are better, however for magister thesis, work with second ones"
"    \ set tabstop=2 |"
"    \ set softtabstop=2 |"
"    \ set shiftwidth=2 |"
au BufNewFile,BufRead *.cpp,*.hpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
        \ set cindent |
        \ highlight OverLength ctermbg=darkgrey guibg=#592929 |
    \ match OverLength /\%79v.*/ |
"!!!!!!!!!!"

au BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set expandtab |




"!!!!! MOJE PRIKAZY !!!!!"
:command Cws set syntax=whitespace   "Obarvi mezery cervene a taby zelene" 
:command Syntax syntax on
:command Zalom set wrap
:command Odlom set nowrap
:command BGdark set background=dark
:command BGlight set background=light
"!!!!!!!!!!"

"Reindent whole file"
map <F4> mzgg=G`z   

set pastetoggle=<F2>
