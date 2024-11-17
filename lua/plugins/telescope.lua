return {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      extensions = {
        fzf = {
            fuzzy = true,                    
            override_generic_sorter = true, 
            override_file_sorter = true,   
            case_mode = "smart_case",     
        }
      },
      config = function()
        require('telescope').load_extension('fzf')
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep,  {})
      end
    }
 
