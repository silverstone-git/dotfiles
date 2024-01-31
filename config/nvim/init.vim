call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

nnoremap <C-p> :Prettier<CR>
nnoremap <C-f> :NERDTree<CR>
let g:dart_format_on_save = v:true
let g:airline_theme='bubblegum'
