set nocompatible              " required
filetype off                  " required

" use python virtual env
let g:python3_host_prog = expand('~/.config/nvim/venv/bin/python')

" set the runtime path to include Vundle and initialize
call plug#begin()

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

"YouCompleteMe autocompletion
Plug 'valloric/youcompleteme'

" native lsp-config (using this instead of CoC)
Plug 'neovim/nvim-lspconfig'

" Plugin 'dense-analysis/ale'
Plug 'preservim/nerdtree'

" jdtls
Plug 'mfussenegger/nvim-jdtls'

" CoC
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
