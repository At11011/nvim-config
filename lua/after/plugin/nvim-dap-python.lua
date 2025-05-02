require("dap-python").setup("uv")
require("dap-python").setup("python3")

vim.keymap.set('n', '<leader>dn', function() require('dap-python').test_method() end, { silent = true })
vim.keymap.set('n', '<leader>df', function() require('dap-python').test_class() end, { silent = true })
vim.keymap.set('v', '<leader>ds', function()
    vim.cmd('normal! <ESC>')
    require('dap-python').debug_selection()
end, { silent = true })

vim.api.nvim_set_keymap('n', '<Leader>cr', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
    { noremap = true, silent = true })
