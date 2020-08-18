call plug#begin()
  Plug 'lambdalisue/suda.vim'
  Plug 'vim-airline/vim-airline' 
call plug#end()

let suda_smart_edit = 1

let g:airline_powerline_fonts = 1 

set number

filetype plugin on
filetype indent on

set so=7

set ruler
set cmdheight=2
set hidden

set ignorecase
set smartcase
set lazyredraw

set showmatch
set matchtime=2

set foldcolumn=1

"try
"  colorscheme desert
"catch
"endtry

set background=dark
set fileformats=unix,dos,mac

set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=2
set tabstop=2

set linebreak
set tw=80

set smartindent

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()<Paste>

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
