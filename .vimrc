set nocompatible              " be iMproved, required
filetype off                  " required

so ~/.vim/plugins.vim

syntax enable

"colorscheme darktango
"colorscheme atom-dark-256
colorscheme material-theme
set guifont=Fira\ Mono\ for\ Powerline:h14
set linespace=20
set laststatus=2

set backspace=indent,eol,start
let mapleader = ','
set number
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set smartindent

"---------------------------- Encoding fixes ---"
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

"----------------------------NERDTree fix---"
"let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = '0'
"let g:NERDTreeGlyphReadOnly = "RO"
let NERDTreeShowHidden = 1

"----------------------------FTP---
let g:netrw_ftp_cmd="ftp -p"

"----------------------------PHP-CS_FIXER---
" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules

let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_path = "/home/szihaj/.composer/vendor/bin/php-cs-fixer"
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

set hlsearch
set incsearch

"----------------------------------Mappings---"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>epl :e ~/.vim/plugins.vim<cr>
nmap <Leader>eps :tabedit ~/.vim/snippets/php.snippets<cr>

nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>nt :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-O> :CtrlPMRUFiles<cr>

nnoremap <silent><Leader>pf :call PhpCsFixerFixFile()<cr>

map <F8> "+gP

nmap <C-s> :w<cr>
"-------------------------------------Splits---"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" ----------- ---------- scrollbars --- "
set guioptions-=l 
set guioptions-=L
set guioptions-=r
set guioptions-=R
"set guioptions=-b
"set guioptions=-h
set guioptions-=e

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"--------------------------------CtrlP-conf---"
" let g:ctrlp_custom_ignore = 'a\b\c|d'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

let NERDTreeHijackNetrw = 0

"--------------------------------Auto sourcing this file---
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

augroup autocsfix
    autocmd!
    autocmd BufWritePost !/home/szihaj/.composer/vendor/bin/php-cs-fixer <afile>
augroup END
