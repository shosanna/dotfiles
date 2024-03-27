local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = "," -- Make sure to set `mapleader` before lazy so your mappings are correct

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = true

vim.o.hidden = true

vim.o.scrolloff = 9
vim.o.number = true
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
-- vim.o.laststatus = 0
-- vim.o.cmdheight = 0

vim.o.winwidth = 75

vim.o.wildmode = "list:longest,list:full"
vim.o.wildignore =
	"obj,*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,node_modules,tmp,project/target,target,tags,CMakeFiles,bower_components,dist,_darcs,vcr,app/assets/images,*.dSYM,*.pyc,_build,rel,*.a,priv/static,*.aux,*.dvi,*.xmpi,*.out,*.lot,*.lof,*.blg,*.bbl,*.toc,__pycache__,build,logs,tags,*.rpyc"

-- TODO: default is menu,preview?
vim.o.completeopt = "menuone,preview,noinsert,noselect"

vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.o.backupcopy = "yes"
vim.o.list = false
vim.o.listchars = "tab:--,trail:."
vim.o.pastetoggle = "<F3>"
vim.o.undofile = true
vim.g.VimuxOrientation = "h"

require("lazy").setup({
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	-- { "rose-pine/neovim", name = "rose-pine" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "preservim/nerdtree" },
	{ "terrortylor/nvim-comment" },
	"sbdchd/neoformat",

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"folke/neodev.nvim",

	-- "jose-elias-alvarez/typescript.nvim",

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	"junegunn/fzf",
	"junegunn/fzf.vim",

	"farmergreg/vim-lastplace",

	"Pocco81/auto-save.nvim",
	"jiangmiao/auto-pairs",

	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	"hrsh7th/cmp-copilot",
	"github/copilot.vim",

	"benmills/vimux",
	"tpope/vim-sensible",
	"tpope/vim-eunuch",
	"tpope/vim-surround",
	"tpope/vim-repeat",
	"tpope/vim-rsi",

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
})

require("neodev").setup({})
require("neoconf").setup({})
require("which-key").setup({})
require("nvim_comment").setup()
-- require("rose-pine").setup({
-- 	disable_background = true,
-- })

-- function ColorMyPencils(color)
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- ColorMyPencils()

vim.cmd.colorscheme "catppuccin"

vim.g.neoformat_only_msg_on_error = 1

vim.keymap.set("n", "<leader>r", "<cmd>VimuxRunCommand('c')<CR>", {})
vim.keymap.set("n", "<Leader>q", "<cmd>VimuxRunCommand('c')<CR>", {})
vim.keymap.set("n", "<Leader>w", "<Cmd>VimuxRunCommand('c')<CR>", {})

vim.api.nvim_set_keymap("n", "<C-j>", "<C-w><C-j>", {})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w><C-k>", {})
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w><C-h>", {})
vim.api.nvim_set_keymap("n", "<C-h>", "<C-\\><C-n><C-w><C-h>", {})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w><C-l>", {})

vim.api.nvim_set_keymap("n", "-", "<cmd>Neoformat<cr>", {})
vim.api.nvim_set_keymap("n", "<C-_>", "<cmd>CommentToggle<CR>", {})
vim.api.nvim_set_keymap("v", "<C-_>", ":'<,'>CommentToggle<CR>", {})

function _G.ReloadConfig()
	for name, _ in pairs(package.loaded) do
		if name:match("^user") and not name:match("nvim-tree") then
			package.loaded[name] = nil
		end
	end

	dofile(vim.env.MYVIMRC)
	vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

-- vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", {})
vim.api.nvim_set_keymap("n", "<leader><leader>", "<c-^>", {})

vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>Files ./<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>F", "<cmd>FZF %%<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gt", "<cmd>Tags<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>ga", "<cmd>Rg<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>gs", ":Rg <C-r><C-w><cr>", {})
vim.api.nvim_set_keymap("n", "<leader>gd", ":Rg <C-r><C-w><cr>", {})
vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>Buffers<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>B", "<cmd>BTags<cr>", {})

vim.api.nvim_set_keymap("i", "<C-c>", "<Esc>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>ge", "<cmd>vs ~/.config/nvim/init.lua<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>R", "<cmd>lua ReloadConfig()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<CR>", "<cmd>nohlsearch<CR>", {})

require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "lua", "javascript", "typescript", "rust", "json", "jsonc", "toml", "python" },

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		enable = true,
	},
})

	-- Mappings.
	local map_opts = { noremap = true, silent = true }

	vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "<C-m>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", map_opts)
	vim.api.nvim_set_keymap(
		"n",
		"<space>wl",
		"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
		map_opts
	)
	vim.api.nvim_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", map_opts)
	vim.api.nvim_set_keymap("n", "<f2>", "<cmd>lua vim.lsp.buf.rename()<CR>", map_opts)
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
	vim.api.nvim_set_keymap("n", "-", "<cmd>lua vim.lsp.buf.format()<cr>", map_opts)
	vim.api.nvim_set_keymap("v", "-", "<cmd>lua vim.lsp.buf.format()<cr>", map_opts)




local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
-- require("lspconfig").tsserver.setup({})

-- lsp.skip_server_setup({'tsserver'})

lsp.setup()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "tsserver", "rust_analyzer", "pylsp" },
})

local cmp = require("cmp")
local luasnip = require("luasnip")

local has_words_before = function()
	local cursor = vim.api.nvim_win_get_cursor(0)
	return (vim.api.nvim_buf_get_lines(0, cursor[1] - 1, cursor[1], true)[1] or "")
		:sub(cursor[2], cursor[2])
		:match("%s")
end

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "nvim_lsp_signature_help" },
		{ name = "nvim_lua" },
		{ name = "copilot" },
		{ name = "luasnip" },
		{ name = "path" },
	}, {
		{ name = "buffer", keyword_length = 3 },
	}),

	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		-- Accept currently selected item. Set `select` to `false` to only
		-- confirm explicitly selected items.
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-j>"] = cmp.mapping.confirm({ select = true }),
		["<C-l>"] = cmp.mapping.confirm({ select = true }),

		["<C-p>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item(cmp_select_opts)
			else
				cmp.complete()
			end
		end),
		["<C-n>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item(cmp_select_opts)
			else
				cmp.complete()
			end
		end),

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			-- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
			-- they way you will only jump inside the snippet region
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
})

-- require('typescript').setup({
--   server = {
--     on_attach = function(client, bufnr)
--       -- You can find more commands in the documentation:
--       -- https://github.com/jose-elias-alvarez/typescript.nvim#commands
--
--       vim.keymap.set('n', '<leader>ci', '<cmd>TypescriptAddMissingImports<cr>', {buffer = bufnr})
--     end
--   }
-- })
--
