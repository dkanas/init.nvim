set termguicolors

"variables
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:fzf_buffers_jump = 1
let g:fzf_action = { 'enter': 'tab split' }
let g:neoformat_only_msg_on_error = 1
let mapleader = "\<Space>"
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"basic settings
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set nocompatible

"plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'nanotech/jellybeans.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"mappings
:nnoremap <silent> <leader>/ :Files<CR> 
:nnoremap <silent> <leader>ce :tabedit ~/.config/nvim/init.vim<CR>
:nnoremap <silent> <leader>cr :so ~/.config/nvim/init.vim<CR>
:nnoremap <silent> <leader><backspace> :tabclose<CR>
:nnoremap <silent> <leader>1 1gt
:nnoremap <silent> <leader>2 2gt
:nnoremap <silent> <leader>3 3gt
:nnoremap <silent> <leader>4 4gt
:nnoremap <silent> <leader>5 5gt
:nnoremap <silent> <leader>6 6gt
:nnoremap <silent> <leader>7 7gt
:nnoremap <silent> <leader>8 8gt
:nnoremap <silent> <leader>9 9gt
:nnoremap <silent> <leader><left> :tabp<CR>
:nnoremap <silent> <leader><right> :tabn<CR>
:nnoremap <silent> <leader>t :NERDTreeToggle<CR>
"commands
autocmd BufWritePre *.js Neoformat

colorscheme jellybeans
