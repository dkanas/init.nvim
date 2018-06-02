"basic settings
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set nocompatible
set termguicolors
set hid

"variables
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:fzf_buffers_jump = 1
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:deoplete#enable_at_startup = 1
let g:miniBufExplorerAutoStart = 0
let g:airline#extensions#tabline#enabled = 1
let mapleader = "\<Space>"
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'nanotech/jellybeans.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dkanas/phosphor.vim'
Plug 'weynhamz/vim-plugin-minibufexpl'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dkanas/vim-learning'
Plug 'ap/vim-buftabline'
call plug#end()
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"mappings
nnoremap <silent> <leader>/ :Files<cr> 
nnoremap <silent> <leader>ce :e ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>cr :so ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader><backspace> :bd<cr>
nnoremap <silent> <leader>h :MBEbp<cr>
nnoremap <silent> <leader>l :MBEbn<cr>
nnoremap <silent> <leader>t :NERDTreeToggle<cr>
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)
nnoremap <esc> :noh<cr>

"color scheme
colorscheme phosphor
