return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    vim.notify("CMP RUNNING")
    local cmp = require("cmp")
    opts.experimental = {
      ghost_text = false,
    }
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
      ["<C-j>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item() -- Move down
        else
          fallback()
        end
      end, { "i", "c" }), -- Works in Insert and Command-line modes

      ["<C-k>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item() -- Move up
        else
          fallback()
        end
      end, { "i", "c" }), -- Works in Insert and Command-line modes

      ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Confirm selection
      ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Optional: Confirm with Tab
    })
  end,
}
