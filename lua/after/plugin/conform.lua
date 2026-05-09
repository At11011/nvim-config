require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },

        -- Python
        python = { "isort", "black" },

        -- Rust
        rust = { "rustfmt", lsp_format = "fallback" },

        -- JavaScript
        javascript = { "prettierd", "prettier", stop_after_first = true },

        -- TeX
        tex = { "tex-fmt" },

        -- C
        c = { "clang_format" },

        -- Optional: C++
        cpp = { "clang_format" },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})

