return {
    "preservim/vim-pencil",
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>wo", "<cmd>SoftPencil|ZenMode<cr>", { desc = "Writting mode" })
    end
}
