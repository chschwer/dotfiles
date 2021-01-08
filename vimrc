set nocompatible

" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'bitc/vim-hdevtools'
Plugin 'Twinside/vim-hoogle'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'w0rp/ale'

Plugin 'moll/vim-node'

Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'ycm-core/YouCompleteMe'

Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
syntax enable

colorscheme solarized
set background=light

set number
set columns=100
if has("gui_running")
  set lines=48
endif

set tabstop=2 shiftwidth=2 expandtab
set completeopt=menuone,preview
set omnifunc=syntaxcomplete#Complete
set diffopt+=vertical

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

" Einstellungen für hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax nofoldenable
augroup END

" ALE
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-i> <Plug>(ale_go_to_definition)
let g:ale_lint_on_text_changed = "never"

let g:ale_linters = {
\   'tex': [],
\   'java': [],
\   'javascript': ['eslint', 'tsserver'],
\}

set guifont=DejaVu\ Sans\ Mono\ 12
