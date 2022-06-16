let mapleader=","
set number
set ts=4
set shiftwidth=4
set ai sw=4
set expandtab
set cursorline

if !&scrolloff
    set scrolloff=2
endif

let g:ctrlp_working_path_mode = ''
let NERDTreeShowHidden=1

" Powerline
" let g:airline_powerline_fonts = 1
" set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" set laststatus=2
" set t_Co=256

"----------------------------------Mappings---"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>epl :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>eps :tabedit ~/.vim/snippets/php.snippets<cr>

nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>nt :NERDTreeToggle<cr>
nmap <A-1> :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-O> :CtrlPMRUFiles<cr>

nnoremap <C-Left> :tabprevious<cr>
nnoremap <C-Right> :tabnext<cr>
nnoremap <C-Down> :tabclose<cr>
" nnoremap <C-w> :bd<cr>
" nnoremap <Leader>t :term ++close<cr>
nnoremap <Leader>t :split<cr>:term<cr>
tmap <Leader>t <c-w>:term ++close<cr>
tnoremap <Esc> <C-\><C-n>
                                                                                                                        
nnoremap <Leader>s :!php -l %<cr>
nnoremap <Leader>m :MarkdownPreview<cr>
nnoremap <Leader>d <C-]>
nnoremap <Leader>b <C-T>
nnoremap <Leader>i :PhpactorImportClass<cr>
nnoremap <Leader>r :PhpactorFindReferences<cr>
                                                                                                                        
nnoremap <C-S-F> :Ag 
nnoremap <Leader>R :redo<cr> 

map <F8> "+gP

nmap <C-s> :w<cr>
nmap <C-i> :bd<cr>

"-------------------------------------Splits---"                                                                        
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
nmap ss :split<cr><C-w>w
nmap sv :vsplit<cr><C-w>w

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20,results:20'

" Plugins
call plug#begin('~/.config/nvim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'

    Plug 'phpactor/phpactor', { 'do': ':call phpactor#Update()', 'for': 'php'}
    Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
    Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'

    Plug 'StanAngeloff/php.vim', {'for': 'php'}

    Plug 'phpactor/phpactor', { 'do': ':call phpactor#Update()', 'for': 'php'}

    Plug 'tpope/vim-vinegar'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'junegunn/fzf'                                                                                                   
    Plug 'junegunn/fzf.vim'                                                                                               
    Plug 'mattn/emmet-vim'
    Plug 'stanbsky/wp-hook-finder'
    
    Plug 'kaicataldo/material.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug '4513ECHO/vim-colors-hatsunemiku'
    Plug 'sainnhe/everforest'
    Plug 'arcticicestudio/nord-vim'
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" WP
nnoremap <Leader>f :FindWPHook<CR>
nnoremap <Leader>F :FindWPHookDef<CR>

" PHP7
let g:ultisnips_php_scalar_types = 1

augroup ncm2
  au!
  autocmd BufEnter * call ncm2#enable_for_buffer()
  au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
  au User Ncm2PopupClose set completeopt=menuone
augroup END

" parameter expansion for selected entry via Enter
inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")

" cycle through completion entries with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"

" PHPACTOR
    " context-aware menu with all functions (ALT-m)
    nnoremap <m-m> :call phpactor#ContextMenu()<cr>
    nnoremap <m-h> :call phpactor#Hover()<cr>
    
    nnoremap gd :call phpactor#GotoDefinition()<CR>
    nnoremap gr :call phpactor#FindReferences()<CR>
    
    " Extract method from selection
    vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
    " extract variable
    vnoremap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
    nnoremap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>
    " extract interface
    nnoremap <silent><Leader>rei :call phpactor#ClassInflect()<CR>

    let g:phpactor_executable = '~/.config/nvim/plugged/phpactor/bin/phpactor'
    function! PHPModify(transformer)
        :update
        let l:cmd = "silent !".g:phpactor_executable." class:transform ".expand('%').' --transform='.a:transformer
        execute l:cmd
    endfunction

colorscheme nord
" set termguicolors
" let g:airline_theme = 'hatsunemiku'

"---------------------------- macro ---
let @p = 'diwh"0p'

"--------------------------------Commentray---
autocmd FileType php setlocal commentstring=//\ %s

