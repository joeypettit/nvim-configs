return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    require("bufferline").setup({
      highlights = {
        buffer_selected = {
          fg = "#ffffff", -- Keep the text white
          bg = "#00008B", -- Light blue background
          underline = true,
          undercurl = false,
          sp = "#FFA500", -- Bright orange for underline
        },
      },
      options = {
        show_buffer_close_icons = false,
        separator_style = "slant",
      },
    })
  end,
}
