return {

  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },
  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        -- https://github.com/Exafunction/codeium.vim
      })
    end
  },
  {
    'ldelossa/gh.nvim',
    dependencies = {
      'ldelossa/litee.nvim'
    }
  },
  -- vim-tmux-navigator
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<leader>h", "<cmd>TmuxNavigateLeft<cr>",  desc = "[tmux] Left" },
      { "<leader>j", "<cmd>TmuxNavigateDown<cr>",  desc = "[tmux] Down" },
      { "<leader>k", "<cmd>TmuxNavigateUp<cr>",    desc = "[tmux] Up" },
      { "<leader>l", "<cmd>TmuxNavigateRight<cr>", desc = "[tmux] Right" },
    },
  },

  "eandrju/cellular-automaton.nvim",
  "gpanders/editorconfig.nvim",

  'nvim-tree/nvim-web-devicons',
  'Hitesh-Aggarwal/feline_one_monokai.nvim',
  'lambdalisue/nerdfont.vim',
  'junegunn/vim-easy-align',
  'rcarriga/nvim-notify',
}
