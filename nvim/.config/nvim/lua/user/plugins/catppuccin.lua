return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("catppuccin")
        vim.cmd("highlight LineNr guifg='#7f849c'")
    end,
}
