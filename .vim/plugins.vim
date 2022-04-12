set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'vim-airline/vim-airline'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'

" TSX
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

" Plugin 'gregsexton/MatchTag'

" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'garbas/vim-snipmate'

"Plugin 'msanders/snipmate.vim'
"Plugin 'lambdalisue/vim-fullscreen'

" ------ Colors
Plugin 'zeis/vim-kolor'
Plugin 'jdkanani/vim-material-theme'
Plugin 'KabbAmine/yowish.vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'sainnhe/everforest'
Plugin 'joshdick/onedark.vim'

call vundle#end()            " required
filetype plugin indent on    " required

