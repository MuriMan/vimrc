local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.opt.completeopt = {"menu", "menuone", "noselect", "preview"}


local cmp = require'cmp'
local select_opts = {behavior = cmp.SelectBehavior.Select}

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      -- ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
      -- ['<C-n>'] = cmp.mapping.select_next_item(select_opts),
      -- ['<Tab>'] = cmp.mapping.select_next_item(select_opts),
      -- ['<S-Tab>'] = cmp.mapping.select_prev_item(select_opts),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp',
        entry_filter = function(entry, ctx)
            return require("cmp").lsp.CompletionItemKind.Text ~= entry:get_kind() end 
    },
      { name = "path" }
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      -- { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set up lspconfig.
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
