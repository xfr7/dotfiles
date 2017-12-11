set encoding=utf-8
syntax on
filetype indent plugin on
set showcmd    
set number
set wildmenu
set t_Co=256
set incsearch

set laststatus=2
set ruler
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line



let g:jedi#completions_command = "<TAB>"
autocmd FileType python setlocal completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <buffer> <F5> :w <cr>:exec '!python3' shellescape(@%, 1)<cr>


nnoremap <C-F5> :w <cr>:exec "AsyncRun! time python3 %"<CR>

augroup SPACEVIM_ASYNCRUN
    autocmd!
    " Automatically open the quickfix window
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
augroup END

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



call plug#begin()

" Plug 'Yggdroot/indentLine'
" Plug 'skywind3000/asyncrun.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'tpope/vim-sensible'
Plug 'Raimondi/delimitMate'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Plug 'junegunn/vim-easy-align'
Plug 'tomasiser/vim-code-dark'

call plug#end()

colorscheme codedark
