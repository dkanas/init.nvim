" Basic settinrs {{{
set modelines=1
set number relativenumber
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set termguicolors
set hidden
set smartcase
set ignorecase
set inccommand=split
set mouse=a
set expandtab
set shiftwidth=2
set autoread
set rtp+=~/.vim
set splitbelow
set signcolumn=yes
language en_US
" }}}

" Variables {{{
let mapleader = "\<Space>"

"plugins
let g:python3_host_prog = '/Users/dkanas/.pyenv/shims/python3'
let g:airline_theme='onedark'
let g:jsx_ext_required = 0

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 10
let g:netrw_fastbrowse = 0

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')
  Plug 'neovim/nvim-lsp'
  Plug 'neovim/nvim-lspconfig'
  Plug 'vim-scripts/dbext.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-dadbod'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-sleuth'
  Plug 'kristijanhusak/vim-dadbod-ui'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'slashmili/alchemist.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'elixir-editors/vim-elixir'
  Plug 'chemzqm/vim-jsx-improve'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'edkolev/tmuxline.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'joshdick/onedark.vim'
  " Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  Plug 'chrisbra/Colorizer'
  Plug 'preservim/nerdtree'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'therubymug/vim-pyte'
  Plug 'benmills/vimux'
call plug#end()
" }}}
"

" Mappings {{{
" coc.nvim
nnoremap <silent> <leader>/f :CocList files<cr> 
nnoremap <silent> <leader>/b :CocList buffers<cr> 
nnoremap <silent> <leader>/g :CocList grep<cr>
nnoremap <silent> <leader>/m :CocList mru<cr>
nnoremap <silent> <leader>/w :CocList words<cr>
nnoremap <silent> <leader>/y :CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rf <Plug>(coc-refactor)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

" config
nnoremap <silent> <leader>ce :tabe ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>cr :so ~/.config/nvim/init.vim<cr>

" windows
nmap <leader>wh :wincmd h<cr>
nmap <leader>wl :wincmd l<cr>
nmap <leader>wk :wincmd k<cr>
nmap <leader>wj :wincmd j<cr>
nnoremap <leader>wd :close<cr>

" scroll
nmap <leader>u <C-u>
nmap <leader>d <C-d>

" buffers
nnoremap <silent> <leader>bn :bp<cr>
nnoremap <silent> <leader>bp :bn<cr>
nnoremap <leader>bd :bd<cr>
nmap <leader>bcap :let @*=expand("%:p")<cr>
nmap <leader>bcp :let @*=expand("%")<cr>
nnoremap <silent> <leader>f :call ToggleNERDTree()<cr>

" terms
tnoremap jj <c-\><c-n>

" vimux
nnoremap <leader>to :call VimuxOpenRunner()<cr>

" others
nnoremap <esc> :noh<cr>
nnoremap <leader>lt :!node ~/Projects/dupa/index.js<cr>
" }}}

" Misc {{{
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  augroup END
" }}}

" Color scheme {{{
syntax on
colorscheme onedark

highlight EndOfBuffer ctermfg=bg guifg=bg
" }}}

" vim:foldmethod=marker:foldlevel=0
"

let g:dbs = {
      \'db_dev': 'postgres://postgres:postgres@localhost:5432/contractbook_api_dev',
      \'db_test': 'postgres://postgres:postgres@localhost:5432/contractbook_api_test'
      \}

function! ToggleNERDTree()
  if g:NERDTree.IsOpen()
    NERDTreeClose
  elseif expand("%:p") != ""
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction

