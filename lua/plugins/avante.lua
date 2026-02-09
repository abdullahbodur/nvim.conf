return {
  'yetone/avante.nvim',
  build = vim.fn.has('win32') ~= 0 and 'powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false' or 'make',
  event = 'VeryLazy',
  version = false,
  init = function()
    -- Recommended for avante: allows views to fully collapse
    vim.opt.laststatus = 3
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-telescope/telescope.nvim',
    'hrsh7th/nvim-cmp',
    'folke/snacks.nvim',
    'nvim-tree/nvim-web-devicons',
    'zbirenbaum/copilot.lua',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
  opts = {
    instructions_file = 'avante.md',
    provider = 'copilot',
    input = {
      provider = 'snacks',
      provider_opts = {
        title = 'Avante Input',
        icon = ' ',
        placeholder = 'Enter your prompt...',
      },
    },
    selector = {
      provider = 'telescope',
    },
    windows = {
      position = 'right',
      width = 30,
    },
    -- Leave ]] and [[ to Snacks (Next/Prev Reference); avoid binding them in avante
    mappings = {
      jump = {
        next = '',
        prev = '',
      },
    },
  },
}
