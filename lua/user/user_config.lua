-- use a user/user_config.lua file to provide your own configuration

local M = {}

-- add any null-ls sources you want here
M.setup_sources = function(b)
	return {
		b.formatting.autopep8,
		b.code_actions.gitsigns,
    b.diagnostics.ansiblelint,
	}
end

-- add sources to auto-install
M.ensure_installed = {
	null_ls = {
		"stylua",
		"jq",
    "ansiblelint",
    "ansible-language-server",
    "terraform-ls",
	},
	dap = {
		"python",
	},
}

M.isdir = function(path)
  local ok = vim.loop.fs_stat(path)
  return ok
end

-- Return telescope files command
M.telescope_find_files = function()
  local path = vim.loop.cwd() .. "/.git"
  if M.isdir(path) then
    return "Telescope git_files"
  else
    return "Telescope find_files"
  end
end

-- add servers to be used for auto formatting here
M.formatting_servers = {
	["lua_ls"] = { "lua" },
	["null_ls"] = {
	},
}

-- options you put here will override or add on to the default options
M.options = {
	opt = {
		confirm = true,
    tabstop = 2,
    shiftwidth = 2,
    softtabstop = 2,
    expandtab = true,
    termguicolors = true,
    number = true,
    relativenumber = true,
    hidden = true,
    showmatch = true,
    autoindent = true,
    splitbelow = true,
    splitright = true,
    incsearch = true,
    syntax = enable,
	},
}

-- Set any to false that you want disabled in here.
-- take a look at the autocommands file in lua/core for more information
-- Default value is true if left blank
M.autocommands = {
	inlay_hints = true,
	alpha_folding = true,
	treesitter_folds = true,
	trailing_whitespace = true,
	remember_file_state = true,
	session_saved_notification = true,
	format_on_autosave = true,
	css_colorizer = true,
	cmp = true,
}

-- set to false to disable plugins
-- Default value is true if left blank
M.enable_plugins = {
	aerial = true,
	alpha = false,
	autosave = false,
	bufferline = true,
	comment = true,
	copilot = false,
	dressing = false,
	gitsigns = false,
	hop = false,
	indent_blankline = true,
	inlay_hints = true,
	lsp_zero = true,
	lualine = true,
	neodev = false,
	neoscroll = false,
	neotree = true,
	session_manager = true,
	noice = true,
	null_ls = true,
	autopairs = true,
	cmp = true,
	colorizer = true,
	dap = true,
	notify = true,
	surround = true,
	treesitter = false,
	ufo = true,
	onedark = false,
	project = true,
	scope = true,
	telescope = true,
	toggleterm = true,
	trouble = true,
	twilight = false,
	whichkey = false,
	zen = false,
	img_paste = false,
}

-- add extra plugins in here
M.plugins = {
  'EdenEast/nightfox.nvim',
  'nvim-pack/nvim-spectre'
}

-- add extra configuration options here, like extra autocmds etc.
-- feel free to create your own separate files and require them in here
-- M.user_conf = function()
-- 	vim.cmd([[
--   autocmd VimEnter * lua vim.notify("Welcome to CyberNvim!", "info", {title = "Neovim"})]])
-- 	-- require("user.autocmds")
-- 	-- vim.cmd("colorscheme elflord")
-- end

return M
