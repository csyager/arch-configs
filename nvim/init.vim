set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Plug 'valloric/youcompleteme'

" Plugin 'dense-analysis/ale'
Plug 'preservim/nerdtree'

" auto-completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" jdtls
Plug 'mfussenegger/nvim-jdtls'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Java LSP
" Plugin 'prabirshrestha/vim-lsp'
" Plugin 'mattn/vim-lsp-settings'
" Plugin 'prabirshrestha/asyncomplete.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
:set number
:set wrap linebreak
:set breakindent

:command E NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"

" Python indentation
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4  expandtab autoindent fileformat=unix

" JS indentation
au BufNewFile,BufRead *.html,*.js set tabstop=4 softtabstop=4 shiftwidth=4 autoindent smartindent

" java indentation
au BufNewFile,BufRead *.java set tabstop=4 softtabstop=4 shiftwidth=4 autoindent smartindent

" java autocomplete macros
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

" Whitespace
highlight BadWhiteSpace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

syntax on

colorscheme vim 
