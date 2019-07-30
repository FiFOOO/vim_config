call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'majutsushi/tagbar'

call plug#end()

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

syntax enable
colorscheme gruvbox

set showmatch
set formatoptions+=o   
set noshowmode
set laststatus=2
set number relativenumber
set nu rnu

nnoremap <silent> <C-k> :TagbarToggle<CR>
nnoremap <silent> <C-i> :NERDTreeToggle<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1

"PYTHON CONFIG
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:neomake_python_enabled_makers = ['pylint']

call neomake#configure#automake('nrwi', 500)

hi HighlightedyankRegion cterm=reverse gui=reverse

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000
" Use deoplete.
let g:deoplete#enable_at_startup = 1

set completeopt=menu,noinsert

inoremap <expr><TAB>  pumvisible() ? "\<C-y>" : "\<TAB>"
