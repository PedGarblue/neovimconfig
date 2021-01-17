" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
  " File explorer
  Plug 'preservim/nerdtree'
  " Code completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'xuyuanp/nerdtree-git-plugin'
  " syntax checking and semantic errors
  Plug 'dense-analysis/ale'
  " syntax highlighting
  Plug 'sheerun/vim-polyglot'
  " syntax highlighting for pug
  Plug 'digitaltoad/vim-pug'
  " color theme
  Plug 'joshdick/onedark.vim'
call plug#end()
