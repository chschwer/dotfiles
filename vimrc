set nocompatible

" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'python-mode/python-mode'

Plugin 'tmhedberg/SimpylFold'

call vundle#end()
filetype plugin indent on
syntax enable

set number
set tabstop=2 shiftwidth=2 expandtab

" German special keys
nnoremap ü `
vnoremap ü `
nnoremap <buffer> <c-ö> <c-]>
nnoremap ä {
vnoremap ä {
nnoremap Ä }
vnoremap Ä }
nnoremap ß ^
vnoremap ß ^

let g:SimpylFold_docstring_preview = 1

" Appearance
colorscheme solarized
set background=light

set columns=100
if has("gui_running")
  set lines=48
endif

set guifont=DejaVu\ Sans\ Mono\ 12

"
"The following mappings simplify navigation when viewing help:
"
"* Press Enter to jump to the subject (topic) under the cursor.
"* Press Backspace to return from the last jump.
"* Press s to find the next subject, or S to find the previous subject.
"* Press o to find the next option, or O to find the previous option.
"
" Source: https://vim.fandom.com/wiki/Learn_to_use_help
"
autocmd FileType help nnoremap <buffer> <CR> <C-]>
autocmd FileType help nnoremap <buffer> <BS> <C-T>
autocmd FileType help nnoremap <buffer> o /'\l\{2,\}'<CR>
autocmd FileType help nnoremap <buffer> O ?'\l\{2,\}'<CR>
autocmd FileType help nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
autocmd FileType help nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>

" Python specifics
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
let g:pymode_rope=1
let g:pymode_completion=1
let g:pymode_rope_complete_on_dot=0
autocmd CompleteDone * pclose
