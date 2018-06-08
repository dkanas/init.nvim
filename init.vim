"basic settings
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set nocompatible
set termguicolors
set hid
set smartcase
set ignorecase
set inccommand=split
set mouse=a
set expandtab
set shiftwidth=2
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

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
let mapleader = "\<Space>"
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"plugins
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf', 'merged': 0 })
  call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 }) "set rtp to path, where fzf is installed, dein :(
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/nerdtree')
  call dein#add('w0rp/ale')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('carlitux/deoplete-ternjs')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('dkanas/phosphor.vim')
  call dein#add('weynhamz/vim-plugin-minibufexpl')
  call dein#add('dkanas/vim-learning')
  call dein#add('ap/vim-buftabline')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('jiangmiao/auto-pairs')

  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
end

"mappings
nnoremap <silent> <leader>/ :Files<cr> 
nnoremap <silent> <leader>ce :e ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>cr :so ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader><backspace> :bd<cr>
nnoremap <silent> <leader>h :bp<cr>
nnoremap <silent> <leader>l :bn<cr>
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
