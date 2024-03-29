return {
  "nvim-telescope/telescope.nvim",

  tag = "0.1.5",

  dependencies = {
      "nvim-lua/plenary.nvim"
  },

  config = function()
    require('telescope').setup {
      defaults = {
        preview = {
          treesitter = true
        }
      },
    }
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ps', function()
      local search_string = vim.fn.input("Grep > ")
      if search_string == '' then return end
      builtin.grep_string({ search = search_string });
    end)

    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word });
    end)

    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word });
    end)

    vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})

    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

    vim.keymap.set('n', '<C-p>', builtin.git_files, {})

    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  end
}
