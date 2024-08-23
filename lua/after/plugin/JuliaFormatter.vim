" normal mode mapping
nnoremap <localleader>jf :JuliaFormatterFormat<CR>
" visual mode mapping
vnoremap <localleader>jf :JuliaFormatterFormat<CR>

let g:JuliaFormatter_always_launch_server=1

require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"julia"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            julia = {require("juliaformatter").efmConfig}
        }
    }
}

autocmd BufWritePre *.jl lua vim.lsp.buf.formatting_sync()
