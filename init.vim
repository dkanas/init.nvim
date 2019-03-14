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
set autoread
set rtp+=~/.vim
set splitbelow
language en_US

"variables
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ale_linters = {'jsx': ['eslint'], 'javascript': ['eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:deoplete#enable_at_startup = 1
let g:NERDTreeWinPos = "right"
let mapleader = "\<Space>"
let g:airline_theme='deus'

"plugins
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug 'w0rp/ale'
  Plug 'Shougo/deoplete.nvim'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'chemzqm/vim-jsx-improve'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdcommenter'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'tpope/vim-repeat'
  Plug 'slashmili/alchemist.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'reewr/vim-monokai-phoenix'
  Plug 'elixir-editors/vim-elixir'
  Plug 'srcery-colors/srcery-vim'
  Plug 'SirVer/ultisnips'
  Plug 'Shougo/denite.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

"mappings
nnoremap <silent> <leader>/ :Denite buffer file/rec<cr> 
nnoremap <silent> <leader>b :Denite buffer<cr> 
nnoremap <silent> <leader>a :DeniteProjectDir -buffer-name=grep grep:::!<CR>
nnoremap <silent> <leader>ce :e ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>cr :so ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader><backspace> :bd<cr>
nnoremap <silent> <leader>h :bp<cr>
nnoremap <silent> <leader>l :bn<cr>
nnoremap <silent> <leader>t :split<cr> :terminal<cr>
nnoremap <silent> <leader>f :NERDTreeFind<cr>
nmap <leader><left> :wincmd h<cr>
nmap <leader><right> :wincmd l<cr>
nmap <leader><up> :wincmd k<cr>
nmap <leader><down> :wincmd j<cr>
nnoremap <esc> :noh<cr>

"commands
command! -nargs=* T split | terminal <args>

"denite config
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#map('insert', '<down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<up>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<Space><Enter>', '<denite:do_action:vsplit>', 'noremap')

"color scheme
colorscheme srcery
