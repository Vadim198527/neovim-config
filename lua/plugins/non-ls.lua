return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				-- null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.formatting.prettier,
                -- null_ls.builtins.diagnostics.textidote,
                -- null_ls.builtins.diagnostics.textlint,
                -- null_ls.builtins.diagnostics.textidote,
			},
		})
		vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, {})
	end,
}