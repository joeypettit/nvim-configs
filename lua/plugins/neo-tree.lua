return {
     "nvim-neo-tree/neo-tree.nvim",
     branch = "v3.x",
     dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      vim.keymap.set('n', '<C-b>', ':Neotree toggle<CR>')
      require("neo-tree").setup({
        window = {
        mappings = {
          ["<C-b>"] = "close_window",  -- Remap Ctrl + b to close NeoTree
--            ["<CR>"] = function(state)
--        -- Get the node (file or directory) that is currently selected
--        local node = state.tree:get_node()
--        if node.type == "file" then
--          -- Open the file and close the NeoTree window
--          require("neo-tree.sources.filesystem").open(state)
--          vim.cmd("Neotree close")
--        else
--          -- If it's a directory, toggle it open/close
--          state.commands["toggle_node"](state)
--        end
--      end
            }
          }
        })
      end
}
