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
set guifont=Fira_Mono:h10:cANSI:qDRAFT

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set showmatch
set smarttab

map <C-o> :NERDTreeToggle<CR>

" Buffer navingation commands
" Move to the previous buffer with gp
nnoremap gp :bp<CR>

" Move to the next buffer with gn
nnoremap gn :bn<CR>

" List all possible buffers with gl
nnoremap gl :ls<CR>

" List all possible buffers with gb and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

" After writing a python file, call flake8 to lint the source file
" autocmd BufWritePost *.py call Flake8()

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
