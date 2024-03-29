return {
  "theprimeagen/harpoon",
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc =  '[Harpoon] First file' })
    vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end, { desc =  '[Harpoon] Second file' })
    vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end, { desc =  '[Harpoon] Third file' })
    vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end, { desc =  '[Harpoon] Fourth file' })
    vim.keymap.set("n", "<C-]>", function()
      local file_number = tonumber(vim.fn.input("File number > "), 10)
      if not file_number then return end
      ui.nav_file(file_number)
    end, { desc =  '[Harpoon] File by number' })
  end
}
