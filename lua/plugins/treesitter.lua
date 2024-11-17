return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate", 
  config = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { 
				  "c", 
				  "lua", 
			  	"vim", 
				  "vimdoc",     
				  "html",
				  "css",
				  "javascript",
				  "typescript",
    		  "json",
    		  "lua",
    		  "bash",
    		  "markdown",
    		  "yaml",
    		  "graphql",
    		  "prisma"
			  },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
}
