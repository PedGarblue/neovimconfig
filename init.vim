call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'
Plug 'joshdick/onedark.vim'
Plug 'digitaltoad/vim-pug'
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
"
" COC {{{

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" }}}

" NERDTree {{{
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
" NERDTree }}}

" echodoc
set cmdheight=2
let g:echodoc_enable_at_startup = 1

