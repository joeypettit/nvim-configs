return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      flavour = "mocha", -- Choose a flavor: latte, frappe, macchiato, mocha
      custom_highlights = function(colors)
        vim.notify("CMP RUNNING")
        return {
          Normal = { bg = "NONE" }, -- Makes the background transparent
          NormalNC = { bg = "NONE" }, -- Transparent for non-current windows
          CursorLine = { bg = "NONE" }, -- Transparent current line
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
