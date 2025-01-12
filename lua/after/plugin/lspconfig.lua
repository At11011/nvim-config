require("mason").setup()
require("mason-lspconfig").setup({
	"pyright",
	"rust_analyzer",
	"cmake",
	"lua_ls",
	"clangd",
	"julials",
	"pylsp",
	"hyprls",
})

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({})
lspconfig.rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = false,
			},
		},
	},
})
lspconfig.cmake.setup({})
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({
	-- on_attach = function(client, bufnr)
	--     client.server_capabillities.signatureHelpProvider = false
	--     on_attach(client, bufnr)
	-- end,
	-- capabilities = capabilities,
	filetypes = { "c", "cpp", "objc", "objcpp" },
})
lspconfig.julials.setup({})
lspconfig.pylsp.setup({
	--     settings = {
	--   pylsp = {
	--     plugins = {
	--       pycodestyle = {
	--         ignore = {'W391'},
	--         maxLineLength = 100
	--       }
	--     }
	--   }
	-- }
})
lspconfig.hyprls.setup({})
