execute pathogen#infect()

syntax on
set hidden	"Allows to change buffer without forcing to save the buffer.

filetype plugin indent on

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class	"Will prevent these files appearing in tab autocomplete
set noerrorbells	"No fucking error bells
set visualbell

set pastetoggle=<F2>	"Will allow to toggle into paste mode (diable all smart indentation)

set nobackup	"Don't create stupid backup files
set noswapfile	"Don't create swap files

set background=dark
colorscheme gruvbox

set guifont=Fantasque\ Sans\ Mono\:h10
"set guifont=Fira\ Code:h10

"Making sure that the ligatures appear
set renderoptions=type:directx
set encoding=utf-8

" Standard tab options
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Editor Options
set number
set showmatch
set smarttab

" Kill Mouse on Windows
set mouse=c

" Nerdtree binding
map <C-o> :NERDTreeToggle <CR>

" Relative line numbers in Normal mode, Absolute numbers in insert mode.
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Autosave at cursorhold and cursor hold in insert mode
" update interval (when no key has been pressed for update
" internal seconds - defaults to 4000ms)
autocmd CursorHold,CursorHoldI * update


" Commands to automatically shift lines vertically in the editor.
" This maps it to Shift + Up / Down arrow, this is like Sublime Text mapping
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Automatically make pwd= working directory
set autochdir

" For table mode plugin change the table mode corner so that github markdown
let g:table_mode_corner='|'

" Adding F4 as a shortcut to insert timestamp under cursor
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" This version of vim was compiled with python 3.7 dll
" support.  Checked by `:set pythonthreedll?`
" Resetting it to use 3.8 version since that is installed 
" on this machine
"set pythonthreedll=python38.dll
"

" Leader key mappings section
nnoremap <leader>m :tabedit %<CR>
nnoremap <leader>tc :tabclose<CR>
