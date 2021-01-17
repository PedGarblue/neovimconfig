" Use Alt keys to move between buffers
" Next buffer (Alt + k)
map <M-k> :bn <CR>
" Previous buffer (Alt + j)
map <M-j> :bp <CR>
" Delete buffer (Alt + d)
map <M-d> :bd <CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" jk or kj to enter normal mode 
inoremap jk <Esc>
inoremap kj <Esc>
