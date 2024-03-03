return {

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },

  -- logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
      ██████╗  ██╗███████╗ █████╗ ███████╗██████╗ ███████╗██╗   ██╗
      ██╔════╝ ██║██╔════╝██╔══██╗██╔════╝██╔══██╗██╔════╝██║   ██║
      ██║  ███╗██║███████╗███████║███████╗██║  ██║█████╗  ██║   ██║
      ██║   ██║██║╚════██║██╔══██║╚════██║██║  ██║██╔══╝  ╚██╗ ██╔╝
      ╚██████╔╝██║███████║██║  ██║███████║██████╔╝███████╗ ╚████╔╝ 
      ╚═════╝ ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚══════╝  ╚═══╝  
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
