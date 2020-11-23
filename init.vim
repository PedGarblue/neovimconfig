call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'
Plug 'joshdick/onedark.vim'
call plug#end()

" GUI {{{
syntax on
colorscheme onedark
set number
set title
" }}} GUI

" TABS {{{
set tabstop=2
set shiftwidth=2
set expandtab
set diffopt+=iwhite 
set fileformat=unix
" }}} TABS

" Airline {{{
let g:airline#extensions#ale#enabled = 1
" }}} Airline

" ALE {{{
let b:ale_fixers = ['prettier', 'eslint']
" }}} ALE

" Python {{{
let g:python3_host_prog='C:\Users\Pedro Garcia\AppData\Local\Programs\Python\Python37\python.exe'
let g:python_host_prog='C:\Python27\python.exe'
" }}} Python

" NERDTree {{{
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
" NERDTree }}}

" echodoc
set cmdheight=2
let g:echodoc_enable_at_startup = 1

