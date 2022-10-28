local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_lspconfig, lspconfig = pcall(require, "mason-lspconfig")
if not status_lspconfig then
	return
end

mason.setup()
lspconfig.setup()
lspconfig.setup_handlers({
	function(server_name)
		local opts = {}

		local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server_name)
		if has_custom_opts then
			opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
		end

		require("lspconfig")[server_name].setup(opts)
	end,
})

require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
