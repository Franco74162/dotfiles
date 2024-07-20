return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        local keymap = vim.keymap
        keymap.set("n", "<leader>hn", function() harpoon:list():add() end, { desc = "Add new item to harpoon list" })
        keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
        keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
        keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
        keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
    end
}
