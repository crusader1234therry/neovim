call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'farmergreg/vim-lastplace'
"Plug 'mhinz/vim-startify'
"Plug 'joshdick/onedark.vim'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'sainnhe/sonokai'
Plug 'sickill/vim-monokai'
"Plug 'bluz71/vim-moonfly-colors'
Plug 'morhetz/gruvbox'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'andreasvc/vim-256noir'
Plug 'preservim/vim-pencil'
Plug 'dpelle/vim-LanguageTool'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'tonadev/vim-airline-256noir'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'plasticboy/vim-markdown'
Plug 'tanvirtin/vgit.nvim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tribela/vim-transparent'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
call plug#end()
