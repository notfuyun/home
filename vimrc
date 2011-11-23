" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim72/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
" /////my settting////
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on
set nocompatible " above vi
set smartindent
set confirm "tip
" set autowriteall
set number "line
" set textwidth=
set nowrap "break line
set numberwidth=1
set guifont=DejaVu\ Sans\ Mono\ 14
set gfw=Yahei\ Mono\ 14
"encoding begin
"set fileformat=unix
set fileencodings=ucs-bom,utf-8,cp936 "detect
set encoding=utf-8 "buffer
"End encoding
"%F%m%r%h%w fullpath
set statusline=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}\_%{&ff}\_%Y\][%L=%l,%v\_%p%%]\ %{strftime(\"%d/%m/%H:%M\")}\ %m%R\ %<%=%F%h%w
set laststatus=2
highlight StatusLine guifg=#000c00 guibg=#909f90
set directory=.,~/tmp " swap file
"show Show invisibles
set list
set listchars=eol:¬,tab:>-,trail:•,extends:>,precedes:<,
"syn match 0x20Spaces ' ' 
"hi 0x20Spaces guibg=#000300
"Invisible character colors
highlight NonText guifg=#666633
highlight SpecialKey guifg=#666633
"End Show invisibles
iab xdate <c-r>=strftime("%Y/%m/%d %H:%M:%S")<cr>
