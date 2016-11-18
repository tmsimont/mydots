runtime! /usr/share/vim/vimfiles/archlinux.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" PLUGINS
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ervandew/supertab'
" slow and doesn't work on a lot of modules:
" https://github.com/davidhalter/jedi-vim/issues/163
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()

filetype plugin indent on
:syntax enable
let python_highlight_all=1
set background=dark
colorscheme solarized

" 2-width tabs (review this...)
set tabstop=2 shiftwidth=2 softtabstop=2 
set nu

map <C-n> :NERDTreeToggle<CR>
map <C-l> :bn!<CR>
map <C-h> :bp!<CR>
map <C-c> :SyntasticCheck<CR>:Errors<CR>
map <C-w><C-d> :bp<bar>sp<bar>bn<bar>bd<CR>
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" attempt to disable mouse
set mouse=

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'passive' }

" nerd tree
let g:NERDTreeWinPos = "right"
let NERDTreeShowLineNumbers=0

" vim-airline
let g:airline#extensions#tabline#enabled = 1

let g:clang_user_options="-std=c++11"
let g:clang_close_preview=0
let g:clang_auto_select=1
let g:clang_complete_copen=1
let g:clang_complete_auto=1
