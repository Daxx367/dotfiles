" Max's vimrc based on Neil's (minimal) vimrc
" Copy this file to your home directory and rename it `.vimrc` (no file
" extension). Feel free to look up what any of the lines mean, and/or add
" extra bits.

" Installing plug
" This will auto install plug if you don't have it installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugs
" Plugs to install.
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'altercation/vim-colors-solarized'
call plug#end()

" AESTHETIC THINGS
" set vim to use colours more friendly with putty's dark background
syntax enable
set background=dark
colorscheme solarized
" line numbers
set relativenumber
set number
" prevent vim from highlighting things after you've searched them
set nohlsearch

" BUFFERS (Because tabs are wrong)
set hidden

" AIRLINE
let g:airline#extensions#tabline#buffer_idx_format = {} " change number formatting for tab bar
for i in range(0, 9)
  let g:airline#extensions#tabline#buffer_idx_format[i] = printf("%d: ", i)
endfor

let g:airline#extensions#tabline#enabled = 1 " turn on tab bar
let g:airline_powerline_fonts = 1 " make it look nice

let g:airline#extensions#tabline#fnamemod = ':.' " buffer name format
let g:airline#extensions#tabline#show_buffers = 1 " buffers line enabled
let g:airline#extensions#tabline#buffer_min_count = 2 " buffers shown if there are 2 or more.
let g:airline#extensions#tabline#buffer_idx_mode = 1 " buffer numbers always shown - 1-9

" INDENTATION THINGS
set smarttab
set expandtab

autocmd FileType c,h,cpp,hpp,python,sh,mysql setlocal softtabstop=4
autocmd FileType c,h,cpp,hpp,python,sh,mysql setlocal shiftwidth=4
autocmd FileType c,h,cpp,hpp,python,sh,mysql setlocal tabstop=4

autocmd FileType javascript,typescript,typescriptreact,json,yaml,css,scss setlocal softtabstop=2
autocmd FileType javascript,typescript,typescriptreact,json,yaml,css,scss setlocal shiftwidth=2
autocmd FileType javascript,typescript,typescriptreact,json,yaml,css,scss setlocal tabstop=2

" LINE LENGTH BAR
autocmd FileType c,h,cpp,hpp,python,sh,mysql,javascript,typescript setlocal cc=80
autocmd FileType rust setlocal cc=100
autocmd FileType java setlocal cc=80
autocmd FileType tex,markdown set spell
set ruler
set showcmd

" MOUSE INTERACTION
" (uncomment this if you want to use the mouse in vim)
" set mouse=a

" Rules for file types
" Rofi config files
autocmd BufNewFile,BufRead /*.rasi setf css
