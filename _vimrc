autocmd! bufwritepost _vimrc source $VIM/_vimrc

syntax on
set nocompatible " above vi
set smartindent
set confirm "tip
" set autowriteall
set number "line
" set textwidth=
set nowrap "break line
set numberwidth=1
set guifont=Consolas
set gfw=Simhei
"encoding begin
"set fileformat=unix
set fileencodings=ucs-bom,utf-8,cp936 "detect
set encoding=utf-8 "buffer
"End encoding
"%F%m%r%h%w fullpath
set statusline=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}\_%{&ff}\_%Y\][%L=%l,%v\_%p%%]\ %{strftime(\"%d/%m/%H:%M\")}\ %m%R\ %<%=%F%h%w
set laststatus=2
highlight StatusLine guifg=#000c00 guibg=#909f90
set directory=$VIM/swap,.,~/tmp " swap file
"show Show invisibles
set list
set listchars=eol:¬,tab:>-,trail:•,extends:>,precedes:<,
"syn match 0x20Spaces ' ' 
"hi 0x20Spaces guibg=#000300
"Invisible character colors
highlight NonText guifg=#666633
highlight SpecialKey guifg=#669966
"End Show invisibles
iab xdate <c-r>=strftime("%Y/%m/%d %H:%M:%S")<cr>
