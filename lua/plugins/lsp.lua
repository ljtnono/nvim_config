require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- 设置mason
require("mason-lspconfig").setup({
    -- 确保安装
    ensure_installed = {
        "sumneko_lua",
        "pyright"
    }
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- 设置lua语言的配置
lspconfig.sumneko_lua.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {"vim", "packer_bootstrap"},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

-- 设置python语言的配置
lspconfig.pyright.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "off"
            }
        }
    }
}

-- 设置vue语言的配置
lspconfig.volar.setup {
    filetypes = {
        "typescript", 
        "javascript", 
        "javascriptreact", 
        "typescriptreact", 
        "vue", 
        "json"
    }
}

-- 设置java语言的配置
lspconfig.jdtls.setup{ 
    cmd = { 
        "jdtls"
    },
    filetypes = {
        "java"
    },
    single_file_support = true
}


