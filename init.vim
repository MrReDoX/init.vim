filetype plugin on
filetype indent on

nmap <leader>w :w!<cr>
command W w !sudo tee % > /dev/null

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

try
  colorscheme desert
catch
endtry

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

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()<Paste>

function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction
