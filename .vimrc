call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'raimondi/delimitmate'
Plug 'jbgutierrez/vim-babel'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'


call plug#end()

"" General
syntax on
set number
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" " when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab
" saving ease
command! W w
command! Q q
command! WQ wq
command! Wq wq
colorscheme nord
set background=dark

" VIM-AIRLINE
"let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='nord'

" INDENT-GUIDES
set list lcs=tab:\|\ 
let g:indentLine_color_term = 239
let g:indentLine_enabled = 1

"" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ignore .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"" NERD COMMENTOR

" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
" let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
" let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1

"" Vim-Javascript
let g:javascript_plugin_jsdoc = 1


"" EASY MOTION
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)
"
" " Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
"
" " JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
