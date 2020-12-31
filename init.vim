call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'
Plug 'joshdick/onedark.vim'
Plug 'digitaltoad/vim-pug'
call plug#end()

" GUI {{{

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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
let g:airline#extensions#ale#enabled=1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Use Alt keys to move between buffers
" Next buffer
map <M-k> :bn <CR>
" Previous buffer
map <M-j> :bp <CR>
" Delete buffer
map <M-d> :bd <CR>

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

" TextEdit might fail if hidden is not set.
set hidden
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" }}}
  
" NERDTree {{{
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
" NERDTree }}}

" echodoc
set cmdheight=2
let g:echodoc_enable_at_startup = 1

