return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false, -- Load immediately on startup
    priority = 1000, -- Load before other plugins to prevent flashing
    opts = {
      flavour = 'mocha', -- Explicitly set the mocha variant
      transparent_background = false, -- Change to true if you want transparency
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
    },
    config = function(_, opts)
      require('catppuccin').setup(opts) -- Initialize with your options
      vim.cmd.colorscheme 'catppuccin' -- Set the colorscheme permanently
    end,
  },
}