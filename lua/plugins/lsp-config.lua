return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
          "tailwindcss",
          "cssls",
          "docker_compose_language_service",
          "dockerls",
          "gradle_ls",
          "graphql",
          "html",
          "eslint",
          "ts_ls",
          "jsonls",
          "grammarly",
          "prismals",
          "pyright",
          "sqlls",
          "vimls",
          "lemminx",
          "yamlls",
          "zls",
        }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Import the lspconfig module
      local lspconfig = require("lspconfig")

      -- Function to configure language servers
      local function on_attach(client, bufnr)
        -- Example key mappings and settings for LSP
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
      end

      -- Configure each language server
      lspconfig.lua_ls.setup { on_attach = on_attach }
      lspconfig.bashls.setup { on_attach = on_attach }
      lspconfig.tailwindcss.setup { on_attach = on_attach }
      lspconfig.cssls.setup { on_attach = on_attach }
      lspconfig.docker_compose_language_service.setup { on_attach = on_attach }
      lspconfig.dockerls.setup { on_attach = on_attach }
      lspconfig.gradle_ls.setup { on_attach = on_attach }
      lspconfig.graphql.setup { on_attach = on_attach }
      lspconfig.html.setup { on_attach = on_attach }
      lspconfig.eslint.setup { on_attach = on_attach }
      lspconfig.ts_ls.setup { on_attach = on_attach }
      lspconfig.jsonls.setup { on_attach = on_attach }
      lspconfig.grammarly.setup { on_attach = on_attach }
      lspconfig.prismals.setup { on_attach = on_attach }
      lspconfig.pyright.setup { on_attach = on_attach }
      lspconfig.sqlls.setup { on_attach = on_attach }
      lspconfig.vimls.setup { on_attach = on_attach }
      lspconfig.lemminx.setup { on_attach = on_attach }
      lspconfig.yamlls.setup { on_attach = on_attach }
      lspconfig.zls.setup { on_attach = on_attach }
    end,
  },
}
