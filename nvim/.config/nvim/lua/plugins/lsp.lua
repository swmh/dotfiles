local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})

lspconfig.zls.setup({})

local on_attach = function(client)
    require'completion'.on_attach(client)
end

lspconfig.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})


lspconfig.clangd.setup{}
lspconfig.docker_compose_language_service.setup{
    cmd = { "docker-compose-langserver", "--stdio" }
}
lspconfig.dockerls.setup{}
lspconfig.bashls.setup{}
lspconfig.pyright.setup{
    settings = {
        python = {
            analysis = {
                typeCheckingMode = 'basic',
                diagnosticSeverityOverrides = {
                    -- reportOptionalMemberAccess = 'none' 
                    reportGeneralTypeIssues = 'none'
                }
            }
        }
    }
}

lspconfig.gopls.setup{
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,
        }
    }
}

local map = vim.keymap.set
map('n', '<leader>ld', vim.diagnostic.open_float)

-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        map('n', 'gD', vim.lsp.buf.type_definition, { desc = "Go to type definition" },  opts)
        map('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" }, opts)
        map('n', 'K', vim.lsp.buf.hover, { desc = "Hover" }, opts)
        map('n', 'gi', vim.lsp.buf.implementation, {desc = "Go to implementation"}, opts)
        map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
        map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
        map('n', '<leader>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)

        map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Actions" }, opts)
        map('n', 'gr', vim.lsp.buf.references, { desc = "references" }, opts)
        map('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename" }, opts)
    end,
})
