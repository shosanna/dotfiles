call plug#begin('~/.vim/bundle')

Plug 'chriskempson/base16-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'prettier/vim-prettier'
let g:prettier#autoformat_require_pragma = 1
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_config_files = ['.prettierrc']

" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'tomtom/tcomment_vim'

" Plug 'rhysd/vim-clang-format'
" Plug 'vim-scripts/headerguard'
Plug 'sjl/gundo.vim'

" Plug 'janko-m/vim-test'

" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-bundler'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-rake'
" Plug 'thoughtbot/vim-rspec'
" Plug 'vim-ruby/vim-ruby'
" Plug 'slim-template/vim-slim'

" Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
" Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'junegunn/vim-easy-align'
" Plug 'vim-scripts/Align'

" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'

" Elixir
" Plug 'elixir-lang/vim-elixir'
" Plug 'slashmili/alchemist.vim'

" Haskell
" Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
" Plug 'enomsg/vim-haskellConcealPlus', { 'for': 'haskell' }
" Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
" Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }
" Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
" Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }
" Plug 'dag/vim2hs'

" HTML
" Plug 'rstacruz/sparkup'

" Javascript and Typescript
Plug 'Shougo/vimproc.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Plug 'Quramy/tsuquyomi'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'Valloric/YouCompleteMe'
" Plug 'maralla/completor.vim'
" Plug 'vim-syntastic/syntastic'

" Plug 'w0rp/ale'
" Plug 'sbdchd/neoformat'

" Plug 'SirVer/ultisnips' |
Plug 'honza/vim-snippets'


Plug 'chrisbra/Colorizer'
Plug 'stevearc/vim-arduino'
Plug 'sudar/vim-arduino-syntax'

call plug#end()

vnoremap - :Neoformat<cr>
