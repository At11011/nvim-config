-- Create default mappings
vim.g.NERDCreateDefaultMappings = 1

-- Add spaces after comment delimiters by default
vim.g.NERDSpaceDelims = 1

-- Use compact syntax for prettified multi-line comments
vim.g.NERDCompactSexyComs = 1

-- Align line-wise comment delimiters flush left instead of following code indentation
vim.g.NERDDefaultAlign = "left"

-- Set a language to use its alternate delimiters by default
-- vim.g.NERDAltDelims_java = 1

-- Add your own custom formats or override the defaults
-- vim.g.NERDCustomDelimiters = { c = { left = '/**', right = '*/' } }

-- Allow commenting and inverting empty lines (useful when commenting a region)
-- vim.g.NERDCommentEmptyLines = 1

-- Enable trimming of trailing whitespace when uncommenting
vim.g.NERDTrimTrailingWhitespace = 1

-- Enable NERDCommenterToggle to check all selected lines are commented or not
vim.g.NERDToggleCheckAllLines = 1

vim.api.nvim_exec(
	[[
  autocmd FileType * nmap <buffer> <silent> <leader><CR> <Plug>NERDCommenterInsert<CR>
]],
	false
)
