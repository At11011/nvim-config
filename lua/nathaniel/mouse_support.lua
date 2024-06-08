if vim.fn.getenv('NVIM_NO_MOUSE_SUPPORT') == '1' then
    vim.o.mouse = ""
else
    vim.o.mouse = "a"
end
