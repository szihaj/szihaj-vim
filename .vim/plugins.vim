set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'lambdalisue/vim-fullscreen'
Plugin 'gregsexton/MatchTag'
Plugin 'vim-airline/vim-airline'

" ------ Colors
Plugin 'zeis/vim-kolor'
Plugin 'jdkanani/vim-material-theme'

call vundle#end()            " required
filetype plugin indent on    " required
