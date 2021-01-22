" checks if the console has true colors
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set iskeyword+=-        " treat dash separated words as a word text object"
set formatoptions-=cro  " Stop newline continution of comments

syntax enable           " enables syntax highlighting
set number              " line numbers
set cmdheight=2         " 2 lines status line
set nowrap              " Display long lines as just one line
set title               " sets the terminal name same of the actual file
set smarttab            " Makes tabbing smarter will realize you have 2 vs 4
set tabstop=2           " 2 spaces for tabs
set smartindent         " Makes indenting smart
set autoindent          " Good auto indent
set shiftwidth=2        " number of space characters for indentation
set expandtab           " coverts tabs to spaces
set mouse=a             " Enable your mouse
set splitbelow          " Horizontal splits will automatically be below
set splitright          " Vertical splits will automatically be to the right
set fileformat=unix     " sets line endings to LF
set diffopt+=iwhite     " Ignore changes in amount of white space
set hidden              " TextEdit might fail if hidden is not set.
set shortmess+=c        " Don't pass messages to |ins-completion-menu|.
set nobackup            " Coc recommends this
set nowritebackup       " Coc recommends this
set updatetime=300      " for better experience
