vim.g["conjure#filetypes"] = {
  "clojure", "fennel", "janet", "hy", "julia", "racket", "scheme", "lua", "lisp", "python"
}

-- vim.g["conjure#filetype#fennel"] = "conjure.client.fennel.stdio"
-- vim.g["conjure#client#fennel#stdio#command"] = "love ."

vim.g["zig_fmt_autosave"] = 0

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
  vim.cmd("packadd packer.nvim")
end

require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use("b0o/mapx.nvim")

  use({
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup({})
    end,
  })

  use({
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({
        triggers = { "<leader>" },
      })
    end,
  })

  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")

  use "nvim-telescope/telescope.nvim"

  use("junegunn/fzf")
  use("junegunn/fzf.vim")

  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require("neogit").setup({})
    end
  }

  use("jose-elias-alvarez/null-ls.nvim")

  use("whatsthatsmell/codesmell_dark.vim")
  use("RRethy/nvim-base16")
  -- use("numirias/semshi")

  use("jansedivy/jai.vim")
  use("jaawerth/fennel.vim")

  use({ "Olical/conjure",
    config = function()
      vim.g["conjure#mapping#def_word"] = "ld"
      vim.g["conjure#mapping#log_tab"] = "lq"
    end
  })

  use("PaterJason/cmp-conjure")
  use("tpope/vim-dispatch")
  use("clojure-vim/vim-jack-in")
  use("radenling/vim-dispatch-neovim")

  use("guns/vim-sexp")
  use("tpope/vim-sexp-mappings-for-regular-people")

  use({
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function()
      require("toggleterm").setup()
    end
  })

  use({
    "numToStr/FTerm.nvim",
    config = function()
      require 'FTerm'.setup({
        border     = 'double',
        dimensions = {
          height = 0.9,
          width = 0.9,
        },
      })
    end
  })

  use("tpope/vim-fugitive")
  use("tpope/vim-sensible")
  use("tpope/vim-eunuch")
  use("tpope/vim-surround")
  use("tpope/vim-repeat")
  use("tpope/vim-rsi")
  use("EdenEast/nightfox.nvim")

  use("tikhomirov/vim-glsl")

  use("kevinhwang91/nvim-bqf")
  -- use("TimUntersberger/neogit")

  use("editorconfig/editorconfig-vim")

  -- use("ggandor/leap.nvim")
  -- require("leap").add_default_mappings()

  use("mileszs/ack.vim")
  use("benmills/vimux")

  use({
    "jameshiew/nvim-magic",
    config = function()
      require("nvim-magic").setup()
    end,
    tag = "v0.2.2", -- recommended to pin to a tag and update manually as there may be breaking changes
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  })

  use("junegunn/vim-easy-align")

  use("terrortylor/nvim-comment")

  use("jiangmiao/auto-pairs")

  use("itchyny/lightline.vim")

  -- use {
  --   'nvim-tree/nvim-tree.lua',
  --   -- requires = {
  --   --   'nvim-tree/nvim-web-devicons', -- optional, for file icons
  --   -- },
  --   tag = 'nightly', -- optional, updated every week. (see issue #1193)
  --   config = function()
  --     -- -- OR setup with some options
  --     require("nvim-tree").setup({
  --       sort_by = "case_sensitive",
  --       view = {
  --         width = 24,
  --         adaptive_size = true,
  --         mappings = {
  --           list = {
  --             { key = "u", action = "dir_up" },
  --           },
  --         },
  --       },
  --       renderer = {
  --         group_empty = true,
  --       },
  --       filters = {
  --         dotfiles = true,
  --       },
  --       actions = {
  --         open_file = {
  --           window_picker = {
  --             enable = false,
  --           }
  --         }
  --       }
  --     })
  --
  --   end
  -- }

  use("sjl/gundo.vim")

  use("sbdchd/neoformat")

  use("rust-lang/rust.vim")
  use("simrat39/rust-tools.nvim")

  use("chrisbra/vim-zsh")
  use("habamax/vim-godot")
  use("LnL7/vim-nix")
  use("ron-rs/ron.vim")
  use("gutenye/json5.vim")
  use("cespare/vim-toml")

  use("othree/html5.vim")
  use("pangloss/vim-javascript")
  use("evanleck/vim-svelte")

  use("mattn/emmet-vim")
  use("chaimleib/vim-renpy")

  use("zah/nim.vim")
  use("ziglang/zig.vim")
  use("DingDean/wgsl.vim")
  use("Tetralux/odin.vim")

  use("preservim/nerdtree")

  if vim.fn.has("win32") ~= 1 then
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/playground")

    use({
      "nvim-treesitter/nvim-treesitter",
      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = {
            "c", "json", "javascript", "python",
            "rust", "lua", "wgsl", "nix", "fennel",
            "commonlisp", "zig", "clojure"
          },
          highlight = {
            enable = true,
          },
          incremental_selection = {
            enable = true,
            keymaps = {
              -- init_selection = "gnn",
              -- node_incremental = "grn",
              -- scope_incremental = "rc",
              -- node_decremental = "grm",
              init_selection = "`",
              node_incremental = "`",
              node_decremental = "~",
              scope_incremental = "rc",
            },
          },
          textobjects = {
            select = {
              enable = true,
              keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",

                -- Or you can define your own textobjects like this
                ["iF"] = {
                  python = "(function_definition) @function",
                  cpp = "(function_definition) @function",
                  c = "(function_definition) @function",
                  java = "(method_declaration) @function",
                },
              },
            },
            move = {
              enable = true,
              goto_next_start = {
                ["]a"] = "@function.outer",
                ["]]"] = "@class.outer",
              },
              goto_next_end = {
                ["]A"] = "@function.outer",
                ["]["] = "@class.outer",
              },
              goto_previous_start = {
                ["[a"] = "@function.outer",
                ["[["] = "@class.outer",
              },
              goto_previous_end = {
                ["[A"] = "@function.outer",
                ["[]"] = "@class.outer",
              },
            },

            swap = {
              enable = true,
              swap_next = {
                ["<leader>a"] = "@parameter.inner",
              },
              swap_previous = {
                ["<leader>A"] = "@parameter.inner",
              },
            },
          },
        })
      end
    })
  end

  use("tenxsoydev/size-matters.nvim")

  -- -------------------------------
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")

  -- use("nvim-lua/lsp_extensions.nvim")

  use("delphinus/cmp-ctags")

  use("ray-x/lsp_signature.nvim")

  use("mfussenegger/nvim-dap")
  -- use "zhimsel/vim-stay"

  -- --------------------------------

  use("chrisbra/unicode.vim")

  -- TODO: try https://github.com/L3MON4D3/LuaSnip ?

  use("hrsh7th/vim-vsnip")
  use("hrsh7th/vim-vsnip-integ")

  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-vsnip")
end)

-- require("user.reload")

vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>lua ReloadConfig()<CR>", { noremap = true, silent = false })

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = true

vim.o.hidden = true

vim.o.scrolloff = 9
vim.o.number = false
vim.o.relativenumber = false
vim.o.showmode = false

vim.o.timeoutlen = 500

vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.fileencodings = "utcs-bom,utf8,latin2"

-- Use modeline overrides
vim.o.modeline = true
vim.o.modelines = 10
vim.o.laststatus = 0
vim.o.cmdheight = 0

vim.o.winwidth = 75

vim.o.wildmode = "list:longest,list:full"
vim.o.wildignore =
"obj,*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,node_modules,tmp,project/target,target,tags,CMakeFiles,bower_components,dist,_darcs,vcr,app/assets/images,*.dSYM,*.pyc,_build,rel,*.a,priv/static,*.aux,*.dvi,*.xmpi,*.out,*.lot,*.lof,*.blg,*.bbl,*.toc,__pycache__,build,logs,tags,*.rpyc"

-- TODO: default is menu,preview?
vim.o.completeopt = "menuone,preview,noinsert,noselect"

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- vim.api.nvim_exec([[
-- nnoremap <silent> <leader> :<C-u>WhichKey ','<CR>
-- nnoremap <silent> <localleader> :<C-u>WhichKey ','<CR>
-- ]], false)
-- map ("n", "<leader>", ":WhichKey ','<CR>")

vim.o.backupcopy = "yes"
vim.o.list = false
vim.o.listchars = "tab:--,trail:."
vim.o.pastetoggle = "<F3>"
vim.o.undofile = true

vim.cmd "colorscheme base16-nord"
-- vim.g.base16colorspace = 256
vim.o.termguicolors = true
-- vim.o.term = "xterm-256color"

-- vim.api.nvim_exec(
--   [[
-- if exists('+termguicolors')
--   let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
--   let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
--   set termguicolors
-- endif
-- ]] ,
--   false
-- )


-- vim.cmd "set fillchars+=vert:|"
vim.cmd("set fillchars+=vert:│")
-- vim.cmd "colorscheme codesmell_dark"
-- vim.cmd "color base16-default-dark"
-- vim.cmd("color b16")

-- require("base16-colorscheme").setup {
--     base00 = "#141414",
--     base01 = "#282828",
--     base02 = "#383838",
--     base03 = "#585858",
--     base04 = "#b8b8b8",
--     base05 = "#d8d8d8",
--     base06 = "#e8e8e8",
--     base07 = "#f8f8f8",
--     base08 = "#ab4642",
--     base09 = "#dc9656",
--     base0A = "#f7ca88",
--     base0B = "#a1b56c",
--     base0C = "#86c1b9",
--     base0D = "#7cafc2",
--     base0E = "#ba8baf",
--     base0F = "#a16946",
-- }

vim.g.VimuxOrientation = "h"

-- TODO: figure out how to remap these?
-- nunmap ]f
-- nunmap [f

-- nn <leader>v :Vista!!<cr>
vim.g.vista_default_executive = "nvim_lsp"


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("mapx").setup({ global = true })

nnoremap("<leader>sd", ":Telescope help_tags<CR>")
nnoremap("<leader>sa", ":Telescope commands<CR>")

-- map("n", "<leader>sf", "<cmd>Telescope live_grep<CR>")
-- map("n", "<leader>h", "<cmd>Telescope help_tags<CR>")
-- map("n", "<leader>h", "<cmd>Telescope help_tags<CR>")

-- Open files with <leader>f
-- nnoremap("<leader>f", ":Telescope find_files<CR>")
-- nnoremap("<leader>gt", ":Telescope tags<CR>")
-- nnoremap("<leader>ga", ":Telescope live_grep<cr>")
-- nnoremap("<leader>gd", ":Telescope live_grep <C-r><C-w><cr>")
-- nnoremap("<leader>b", ":Telescope buffers<cr>")
-- nnoremap("<leader>B", ":Telescope current_buffer_tags<cr>")

nnoremap("<leader>f", ":Files ./<CR>")
nnoremap("<leader>F", ":FZF %%<CR>")
nnoremap("<leader>gt", ":Tags<cr>")
nnoremap("<leader>ga", ":Rg<cr>")
nnoremap("<leader>gs", ":Rg <C-r><C-w><cr>")
nnoremap("<leader>gd", ":Rg <C-r><C-w><cr>")
nnoremap("<leader>b", ":Buffers<cr>")
nnoremap("<leader>B", ":BTags<cr>")

-- Mapping selecting mappings
nnoremap("<leader><tab>", "<plug>(fzf-maps-n)")
xnoremap("<leader><tab>", "<plug>(fzf-maps-x)")
onoremap("<leader><tab>", "<plug>(fzf-maps-o)")

nnoremap("gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")

-- inoremap("<silent><expr>", "<C-Space> compe#complete()")
-- unused -- map("n", "<silent><expr>", "<CR>      compe#confirm('<CR>')")
-- inoremap("<silent><expr>", "<C-e>     compe#close('<C-e>')")
-- inoremap("<silent><expr>", "<C-f>     compe#scroll({ 'delta': +4 })")
-- inoremap("<silent><expr>", "<C-d>     compe#scroll({ 'delta': -4 })")

vim.api.nvim_exec([[
" command Nerd NvimTreeToggle
" command Nerd CHADopen

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
]], true)


-- -- Expand
-- inoremap("<expr>", "<C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'")
-- snoremap("<expr>", "<C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'")
-- -- inoremap("<expr>", "<C-j>   vsnip#available(1) == 1  ? '<Plug>(vsnip-expand-or-jump)'         : '<C-j>'")
-- -- snoremap("<expr>", "<C-j>   vsnip#available(1) == 1  ? '<Plug>(vsnip-expand-or-jump)'         : '<C-j>'")
--
-- -- Expand or jump
-- inoremap("<expr>", "<C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'")
-- snoremap("<expr>", "<C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'")

nnoremap("<C-_><C-_>", ":CommentToggle<CR>")
vnoremap("<C-_><C-_>", ":CommentToggle<CR>")

nnoremap("<CR>", ":nohlsearch<CR>/<BS>")

-- Buffer resizing with arrow keys
nnoremap("<Up>", "<C-w>5-")
nnoremap("<Down>", "<C-w>5+")
nnoremap("<Left>", "<C-w>5<")
nnoremap("<Right>", "<C-w>5>")

nnoremap("<C-a>", "^")
nnoremap("<C-e>", "$")

inoremap("<C-a>", "<Home>")
inoremap("<C-e>", "<End>")

-- For easier navigation between windows
nnoremap("<C-j>", "<C-w><C-j>")
nnoremap("<C-k>", "<C-w><C-k>")
nnoremap("<C-h>", "<C-w><C-h>")
tnoremap("<C-h>", "<C-\\><C-n><C-w><C-h>")
nnoremap("<C-l>", "<C-w><C-l>")

vnoremap("-", ":lua vim.lsp.buf.format()<cr>")
nnoremap("-", ":lua vim.lsp.buf.format()<cr>")
-- vnoremap("-", ":Neoformat<cr>")
-- nnoremap("-", ":Neoformat<cr>")

-- Bubble multiple lines
vnoremap("<C-Up>", "<C-w><C-k>")
vnoremap("<C-Down>", "<C-w><C-j>")
vnoremap("<C-Left>", "<C-w><C-h>")
vnoremap("<C-Right>", "<C-w><C-l>")

inoremap("<C-X><C-@>", "<C-A>")

if vim.fn.has("win32") == 1 then
  nnoremap("<leader>ge", ":vs C:/users/jakub/dotfiles/nvim/init.lua<CR>")
  -- nnoremap("<leader>e", ':TermExec cmd="make" direction=vertical size=80 go_back=0<cr>')
  -- nnoremap("<leader>r", ":Cargo run<cr>")
  -- nnoremap("<leader>e", ':ToggleTerm cmd="cargo run"<cr>')
  -- nnoremap("<leader>e", ":TermExec cmd='make' direction='vertical' size=80<cr>")
  -- nnoremap("<leader>e", ":TermExec cmd='make' direction='vertical' open=0 size=80<cr>")
  --

  nnoremap("<Leader>r", "<Cmd>TermExec cmd=c direction=vertical size=60<CR>")
  nnoremap("<Leader>q", "<Cmd>ToggleTermToggleAll<CR>")
  nnoremap("<Leader>w", "<Cmd>ToggleTerm direction=vertical size=60<CR>")
  nnoremap("<leader>ma", ":cd C:/dev/flesh-monster<CR>")
  nnoremap("<leader>mb", ":cd C:/dev/BITGUN<CR>")
else
  nnoremap("<leader>ge", ":vs ~/.config/nvim/init.lua<CR>")
  nnoremap("<Leader>r", ":VimuxRunCommand('c <C-R>=expand('%:t')<CR>')<CR>")
  nnoremap("<Leader>q", "<Cmd>call VimuxRunCommand('c')<CR>")
  nnoremap("<Leader>w", "<Cmd>call VimuxRunCommand('c')<CR>")
end


-- Expand %% to directory path of current buffer
cnoremap("%%", "<C-R>=expand('%:h').'/'<CR>")

nnoremap("<F8>", ":ToggleTerm direction=vertical size=60<cr>")
inoremap("<F8>", ":ToggleTerm direction=vertical size=60<cr>")
tnoremap("<F8>", "<C-\\><C-n>:ToggleTerm<cr>")
tnoremap("<Esc>", "<C-\\><C-n>:ToggleTerm<cr>")
nnoremap("<F5>", ":call VimuxRunCommand('make')<cr>")
nnoremap("<F4>", ":call VimuxRunCommand('make')<cr>")
-- map("n", <leader>r :call VimuxRunCommand("make ". expand("%h"))<cr>
-- nnoremap("<leader>t", ":call VimuxRunCommand('make test')<cr>")
-- nnoremap("<leader>c", ":call VimuxRunCommand('make clean')<cr>")

-- Inserts the path of the currently edited file in command mode
cnoremap("<C-P>", "<C-R>=expand('%:p:h') . '/' <CR>")
-- imap <c-x><c-k> <plug>(fzf-complete-word)
inoremap("<c-x><c-f>", "<plug>(fzf-complete-path)")
inoremap("<c-x><c-j>", "<plug>(fzf-complete-file-ag)")
-- imap <c-x><c-l> <plug>(fzf-complete-line)
xnoremap("ga", "<Plug>(EasyAlign)")
nnoremap("ga", "<Plug>(EasyAlign)")
nnoremap("<leader>ws", ":%s/ *$//g<cr><c-o><cr>")
nnoremap("Q", "<NOP>")
nnoremap("<leader><leader>", "<c-^>")

nnoremap(
  "<leader>lt",
  ":!ctags --extras=+f --exclude=build --exclude=public --exclude=target --exclude=node_modules --exclude=.git -R *<CR>"
)
nnoremap("<C-\\>", ":tnext<CR>")

nnoremap("<silent>", "<leader>y :<C-u>silent '<,'>w !pbcopy<CR>")

nnoremap("<F9>", ":Neogit<CR>")

-- TODO: do this with nvim_utils?
-- https://github.com/norcalli/nvim_utils
-- https://www.reddit.com/r/neovim/comments/n80hdb/autocmd_execution_in_neovim_lua_config/
-- https://github.com/norcalli/nvim_utils/blob/master/lua/nvim_utils.lua#L554-L567
-- https://github.com/neovim/neovim/pull/14661

vim.api.nvim_exec(
  [[
" autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost * lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

" Remember last location in file
aug last_location
  au!
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
aug END

aug various_file_types
  autocmd!
  autocmd BufNewFile,BufRead *vimrc set filetype=vim
  autocmd BufWritePost .Xresources,Xresources silent execute '!xrdb ~/.Xresources' | redraw | echom 'Xresources reloaded'
aug END


au BufRead,BufNewFile */funcs/* setfiletype zsh

" when you enter a (new) buffer
augroup set-commentstring-ag
autocmd!
autocmd BufEnter .zshrc.dot set ft=zsh
autocmd BufEnter *.clj,*.cljs :lua vim.api.nvim_buf_set_option(0, "commentstring", ";; %s")
autocmd BufEnter *.jai,*.wgsl,*.glsl,*.vert,*.frag :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
autocmd BufFilePost *.jai,*.wgsl,*.glsl,*.vert,*.frag :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
augroup END
]] ,
  false
)


require("nvim_comment").setup({
  create_mappings = false,
})

if vim.g.neovide or vim.g.goneovim or vim.g.nvui or vim.g.gnvim then
  require("size-matters").setup({
    default_mappings = true,
    step_size = 1, -- font resize step size
    notifications = false, -- default value is true if notify is installed else false
    reset_font = vim.api.nvim_get_option("guifont"), -- Font loaded when using the reset cmd / shortcut
  })
end

vim.g.neoformat_try_node_exe = 1
vim.g.neoformat_only_msg_on_error = 1

-- vim.o.guifont = "Fantasque Sans Mono:8"
vim.g.neovide_cursor_animation_length = 0.00

vim.cmd([[
    let guifont="Arial:h12"
]])


local has_words_before = function()
  local line, col = table.unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true })
vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true })
vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })
-- More here: https://neovimcraft.com/plugin/numToStr/FTerm.nvim/index.html

local null_ls = require("null-ls")
local null_ls_helpers = require("null-ls.helpers")

null_ls.setup()

local jai_compile = {
  method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
  filetypes = { "jai" },
  generator = null_ls.generator({
    command = "make",
    args = { "compile" },
    format = "line",
    from_stderr = true,
    on_output = null_ls_helpers.diagnostics.from_patterns({
      {
        pattern = [[(.+):(%d+),(%d+): Error: (.+)]],
        groups = { "file", "row", "col", "message" }
      }
    })
  })

}

null_ls.register(jai_compile)

-- local show_it = {
--   method = null_ls.methods.DIAGNOSTICS,
--   filetypes = { "jai" },
--   generator = {
--     fn = function(params)
--       local diagnostics = {}
--
--       for i, line in ipairs(params.content) do
--         local col, end_col = line:find("it")
--         if col and end_col then
--           table.insert(diagnostics, {
--             row = i,
--             col = col,
--           end_col = end_col + 1,
--           source = "show-it",
--           message = "IT IS GOOD",
--           severity = vim.diagnostic.severity.WARN,
--           })
--         end
--       end
--
--       return diagnostics
--     end
--   }
-- }
--
-- null_ls.register(show_it)

-- Setup nvim-cmp.
local cmp = require("cmp")

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.fn["vsnip#available"](1) == 1 then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
      elseif has_words_before() then
        cmp.complete()
      else
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, {
      "i",
      "s",
    }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, {
      "i",
      "s",
    }),
  }),

  sources = cmp.config.sources({
    { name = "conjure" },
    { name = "nvim_lsp" },
    { name = "ctags" },
    { name = "vsnip" }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = "buffer" },
  }),
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = "buffer" },
  }),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})

cmp.setup({
  mapping = {
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,

    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
})

-- local t = function(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end
--
-- local check_back_space = function()
--     local col = vim.fn.col "." - 1
--     return col == 0 or vim.fn.getline("."):sub(col, col):match "%s" ~= nil
-- end
--
-- -- Use (s-)tab to:
-- --- move to prev/next item in completion menuone
-- --- jump to prev/next snippet's placeholder
-- _G.tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-n>"
--     elseif vim.fn["vsnip#available"](1) == 1 then
--         return t "<Plug>(vsnip-expand-or-jump)"
--     elseif check_back_space() then
--         return t "<Tab>"
--     else
--         return vim.fn["compe#complete"]()
--     end
-- end
-- _G.s_tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-p>"
--     elseif vim.fn["vsnip#jumpable"](-1) == 1 then
--         return t "<Plug>(vsnip-jump-prev)"
--     else
--         -- If <S-Tab> is not working in your terminal, change it to <C-h>
--         return t "<S-Tab>"
--     end
-- end
--
-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", { expr = true })
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })

-- Mappings.
local map_opts = { noremap = true, silent = true }

-- See `:help vim.lsp.*` for documentation on any of the below functions
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<C-m>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
  map_opts)
vim.api.nvim_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "L", "<cmd>lua vim.lsp.buf.code_action()<CR>", map_opts)
vim.api.nvim_set_keymap("v", "<C-w>", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", map_opts)
vim.api.nvim_set_keymap("v", "L", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", map_opts)
vim.api.nvim_set_keymap("v", "<C-w>", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "[e", "<cmd>lua vim.diagnostic.goto_prev()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "]e", "<cmd>lua vim.diagnostic.goto_next()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", map_opts)
vim.api.nvim_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", map_opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
  --Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  require("lsp_signature").on_attach()
end

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua", "rust_analyzer", "zls",
    "taplo", "clangd", "tsserver", "clojure_lsp"
    -- "nimls"
  }
})

-- -- Setup lspconfig.
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local opts = {
  capabilities = capabilities,
  on_attach = on_attach,
}

local ra_opts = {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        -- command = "clippy",
        -- overrideCommand = { "killall", "nvim" }
      },
      cargo = {
        extraEnv = { IN_RUST_ANALYZER = "1" },
      },
      rustfmt = {
      }
    }
  }
}

require("rust-tools").setup({
  server = ra_opts
  -- server = {
  -- on_attach = function(_, bufnr)
  --   -- Hover actions
  --   vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
  --   -- Code action groups
  --   vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
  -- end,
  -- },
})


lspconfig.taplo.setup(opts)
lspconfig.clojure_lsp.setup(opts)
lspconfig.tsserver.setup(opts)
lspconfig.clangd.setup(opts)
lspconfig.zls.setup(opts)
lspconfig.nimls.setup(opts)
-- lspconfig.jai_lsp.setup(opts)

lspconfig.sumneko_lua.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "vim",
          "use",
          "use_rocks",
          "nnoremap",
          "nmap",
          "inoremap",
          "imap",
          "map",
          "vnoremap",
          "vmap",
          "tnoremap",
          "tmap",
          "cnoremap",
          "cmap",
          "snoremap",
          "smap",
          "onoremap",
          "omap",
          "xnoremap",
          "xmap",
        },
      },
    },
  },
})

-- require("rust-tools").inlay_hints.enable()


-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------
-----------------------------------


-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])

vim.o.exrc = true
vim.o.secure = true

-- TODO:
-- - https://github.com/bfredl/nvim-luadev
-- - https://github.com/tjdevries/nlua.nvim
-- - https://github.com/nvim-lua/plenary.nvim
-- - https://github.com/nvim-lua/popup.nvim
-- - https://github.com/famiu/bufdelete.nvim
-- use 'rafcamlet/nvim-luapad'
-- use "liuchengxu/vista.vim"
-- use "glepnir/lspsaga.nvim"
-- use "tpope/vim-scriptease"
-- use 'ggandor/lightspeed.nvim'
-- use "kevinhwang91/nvim-hlslens"
-- use 'lewis6991/gitsigns.nvim'
-- use { "wfxr/minimap.vim", run = "cargo install --locked code-minimap" }

-- TODO: maybe without icons?
-- use {
--     "kyazdani42/nvim-tree.lua",
--     requires = "kyazdani42/nvim-web-devicons",
-- }
-- TODO: maybe try again?
-- use 'junegunn/goyo.vim'
-- use 'junegunn/limelight.vim'
-- use 'ludovicchabant/vim-gutentags'
-- use 'krisajenkins/vim-projectlocal'
-- use "eshock/vim-matchit"
--
-- TODO: maybe try these too?
-- TODO: try tjdevries/colorbuddy.nvim ?
-- https://github.com/JohnnyMorganz/StyLua
-- https://github.com/Koihik/LuaFormatter
-- use_rocks { "luaformatter", server = "https://luarocks.org/dev" }
