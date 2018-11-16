set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/plugged/fzf

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
"PLUGINS
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'kshenoy/vim-signature'
" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

set encoding=UTF-8

"----- Gruvbox-colorscheme -----"
colorscheme gruvbox
set background=dark
"-------------------------------"

"----- Airline-Statusline for vim ----"
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
""let g:airline_section_z = airline#section#create(['%{ObsessionStatus(''$'', '''')}', 'windowswap', '%3p%% ', 'linenr', ':%3v '])
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v '])
"-------------------------------------"

"----- PEP8 -----"
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
        \ highlight OverLength ctermbg=darkgrey guibg=#592929 |
    \ match OverLength /\%79v.*/ |
"----------------"

"----- C++ indentation -----"
au BufNewFile,BufRead *.cpp,*.hpp
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
        \ set cindent |
        \ highlight OverLength ctermbg=darkgrey guibg=#592929 |
    \ match OverLength /\%79v.*/ |
"---------------------------"

"----- Fortran indentation -----"
au BufNewFile,BufRead *.f,*.f90
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
        \ highlight OverLength ctermbg=darkgrey guibg=#592929 |
    \ match OverLength /\%79v.*/ |
"---------------------------"

au BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
        \ highlight OverLength ctermbg=darkgrey guibg=#592929 |
    \ match OverLength /\%79v.*/ |
"---------------------------"

au BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set expandtab |

"----- My commands -----"
:command Cws set syntax=whitespace   "Obarvi mezery cervene a taby zelene" 
:command Syntax syntax on
:command Zalom set wrap
:command Odlom set nowrap
:command BGdark set background=dark
:command BGlight set background=light
"-----------------------"

"Reindent whole file"
map <F4> mzgg=G`z   

set pastetoggle=<F2>

"multi cursor pluggin
"let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>' "next
let g:multi_cursor_prev_key='<C-k>' "prev
let g:multi_cursor_skip_key='<C-x>' "skip
let g:multi_cursor_quit_key='<Esc>' "quit

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>     "turn off YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>     "turn on YCM
