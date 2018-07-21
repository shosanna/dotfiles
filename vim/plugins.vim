call plug#begin('~/.vim/bundle')

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'vim-ruby/vim-ruby'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kchmck/vim-coffee-script'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dag/vim2hs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'thoughtbot/vim-rspec'
Plug 'slim-template/vim-slim'
Plug 'tomtom/tcomment_vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'maralla/completor.vim'
" Plug 'vim-syntastic/syntastic'

Plug 'rhysd/vim-clang-format'
Plug 'headerguard'
Plug 'sjl/gundo.vim'

" Javascript and Typescript
Plug 'Shougo/vimproc.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

Plug 'janko-m/vim-test'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-dispatch'
Plug 'fatih/vim-go'

Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/Align'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'enomsg/vim-haskellConcealPlus', { 'for': 'haskell' }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }

" Rust
Plug 'rust-lang/rust.vim'

Plug 'rstacruz/sparkup'

Plug 'fatih/vim-go'

call plug#end()

