call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs'
Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'leshill/vim-json'

nmap <C-i> :NERDTreeToggle<CR>

let g:user_emmet_expandabbr_key = '<C-a>,'

map <Leader> <Plug>(easymotion-prefix)

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['gitbranch', 'readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     },
  \     'component_function': {
  \         'gitbranch': 'fugitive#head'
  \     },
  \ }

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0


call plug#end()

syntax enable
" colorscheme iceberg

" colorscheme darcula

" color dracula

" let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox

" colorscheme peaksea

set showmatch
set formatoptions+=o   
set noshowmode
set laststatus=2
set number relativenumber
set nu rnu
