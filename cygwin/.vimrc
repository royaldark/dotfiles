set nocompatible

source $VIMRUNTIME/mswin.vim
behave mswin

syntax on
set hlsearch
filetype plugin indent on

set backspace=indent,eol,start

set showcmd
set incsearch

if has('mouse')
  set mouse=a
end
