--------------------------------------------------------------
-- Lsp installer configuration
--------------------------------------------------------------

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local servers = {
	"sumneko_lua",
	"pyright",
	"rust_analyzer"
}

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handler").on_attach,
		capabilities = require("user.lsp.handler").capabilities,
	}
	-- specifc server configuration
	if server == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		-- merges two tables (overrides existing keys)
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end
	if server == 'rust_analyzer' then
		local rust_opts = require("user.lsp.settings.rust")
		opts = vim.tbl_deep_extend("force", rust_opts, opts)
		require("rust-tools").setup {
			server = opts
		}
		return
	end

	lspconfig[server].setup(opts)
end

