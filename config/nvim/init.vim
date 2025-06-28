call plug#begin()

" syntax tree etc.
Plug 'nvim-tree/nvim-web-devicons'
Plug 'tpope/vim-sensible'
" Plug 'preservim/nerdtree'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'numToStr/Comment.nvim'
Plug 'tpope/vim-surround'
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'
Plug 'dense-analysis/ale'


" lspconfig and cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" theme
Plug 'shaunsingh/nord.nvim'
Plug 'sainnhe/gruvbox-material'

" vsnip
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

lua require('Comment').setup()

" Important!!
"
if has('termguicolors')
	set termguicolors
endif

" For dark version.
" set background=dark

" For light version.
set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'

" For better performance
let g:gruvbox_material_better_performance = 1

" colorscheme nord
colorscheme gruvbox-material

let g:ale_fixers = {
\   'html': [
\	'prettier',
\   ],
\   'javascript': [
\       'prettier',
\   ],
\   'typescript': [
\       'prettier',
\   ],
\   'typescriptreact': [
\       'eslint',
\   ],
\   'go': [
\	'gofmt'
\   ],
\   'python': [
\	'pyright'
\   ]
\}

let g:ale_linters = {
\ 'go': ['gopls'],
\ 'typescript': ['prettier'],
\ 'javascript': ['prettier'],
\ 'python': ['pyright'],
\}

" Initialize configuration dictionary
let g:fzf_vim = {}

let g:dart_format_on_save = v:true
let g:airline_theme='bubblegum'

lua require("init")
