call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
"Plug 'dylanaraps/wal.vim'
call plug#end()

set termguicolors

"uncomment if havent set termguicolors and have a pywal cache
"colorscheme wal

"uncomment if coc-prettier is installed instead of ale
"command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

let g:ale_fixers = {
\   'html': [
\	'prettier',
\   ],
\   'javascript': [
\       'prettier',
\       'eslint',
\   ],
\   'typescript': [
\       'prettier',
\   ],
\   'typescriptreact': [
\       'eslint',
\   ],
\   'go': [
\	'gofmt'
\   ]
\}

let g:ale_linters = {
\ 'go': ['gopls'],
\}

" Initialize configuration dictionary
let g:fzf_vim = {}

nnoremap ,n :NERDTree<CR>
nnoremap ,<space> :ALEFix<CR>

let g:dart_format_on_save = v:true
let g:airline_theme='bubblegum'
