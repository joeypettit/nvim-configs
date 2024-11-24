return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "BufRead",
    config = function()
      vim.g.VM_default_mappings = 1 -- Enable default mappings
      vim.g.VM_theme = "purplegray" -- Set a theme for cursors
    end,
  },
}
