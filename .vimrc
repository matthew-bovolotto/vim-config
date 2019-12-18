set tabstop=4
set shiftwidth=4
set expandtab
set number
set ve=all
set autoindent
set copyindent
set hlsearch
set backspace=indent,eol,start

let g:indentLine_color_term = 239

"set guitablabel=\[%N\]\ %M
"filetype plugin on

syntax on
hi clear

"autocmd ColorScheme janah highlight Normal ctermbg=235
"colorscheme janah
colorscheme spacegray

"call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"call plug#end()

"Pathogen plugin manager
execute pathogen#infect()

"NerdTree Settings
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter *
            \   if !argc()
            \ |   NERDTree
            \ |   wincmd w
            \ | endif



function! Startup()
    read ~/.vim/vim-logo
endfun

let g:Startscreen_function=function('Startup')
"autocmd VimEnter * botright 10 split
"autocmd VimEnter * ConqueTerm bash
"autocmd VimEnter * wincmd p

nnoremap <F1> :set paste!<CR>
nnoremap <F2> :set number! \| NERDTreeToggle<CR> <C-w>w

set pastetoggle=<F1>

nmap <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nmap <F4> :noh <CR>

"nmap <F5> :res +1<CR>
"nmap <F4> :res -1<CR>

nmap <F6> :tabnew <CR> :ConqueTerm bash<CR>
nmap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>

nnoremap <Tab> <C-w>w
nmap ` :tabNext<CR>

nmap 1 1gt
nmap 2 2gt
nmap 3 3gt
nmap 4 4gt
nmap 5 5gt
nmap 6 6gt
nmap 7 7gt
nmap 8 8gt
nmap 9 9gt

let g:airline_theme='murmur'

"autocmd FileType java :TagbarToggle
"autocmd FileType groovy :TagbarToggle

let g:airline_powerline_fonts = 1

highlight NERDTreeDir ctermfg=33
highlight! link NERDTreeClosable NERDTreeDir
highlight! link NERDTreeOpenable NERDTreeDir
highlight! link NERDTreeFlags NERDTreeDir

let g:DevIconsEnableFoldersOpenClose = 1 

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "%",
    \ "Deleted"   : "-",
    \ "Dirty"     : "x",
    \ "Clean"     : "o",
    \ "Unknown"   : "?"
    \ }
