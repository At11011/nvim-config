-- Set clang-format style options
vim.g.clang_format_style_options = {
	AccessModifierOffset = -4,
	AllowShortIfStatementsOnASingleLine = true,
	AlwaysBreakTemplateDeclarations = true,
	Standard = "C++17",
}

-- Define mappings for clang-format commands
vim.api.nvim_set_keymap("n", "<leader>cf", ":ClangFormat<CR>", { silent = true })
vim.api.nvim_set_keymap("v", "<leader>cf", ":ClangFormat<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>x", "<Plug>(operator-clang-format)", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>C", ":ClangFormatAutoToggle<CR>", { silent = true })

vim.cmd([[
  augroup ClangFormatAutogroup
    autocmd!
    autocmd FileType c, cpp ClangFormatAutoEnable
  augroup END
]])
