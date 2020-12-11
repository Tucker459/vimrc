set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" PEP 8 Indention 
au BufNewFile,BufRead *.py:
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Flags bad whitespace as red
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" vim-go autowrite
set autowrite

" mapleader
let mapleader=","

" vim-go shortcuts
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd Filetype go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)

" Make my code pretty :)
let python_highlight_all=1

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }

" nerdtree auto-open 
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerdtree show hidden files
let NERDTreeShowHidden=1

" syntax on 
filetype plugin indent on


" line numbering
set nu

" Searh down into subfolders 
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete 
set wildmenu

" lightline-vim 
set laststatus=2

" Split navigations 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plugin 'itchyny/lightline.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'stephpy/vim-yaml'
Plugin 'elzr/vim-json'
Plugin 'morhetz/gruvbox'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" gruvbox colorscheme
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast = 'dark'
