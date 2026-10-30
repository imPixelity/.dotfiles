require("nvim-treesitter").setup()

require("nvim-treesitter").install({
    "lua",
    "zig"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua",
        "zig"
    },
    callback = function()
        vim.treesitter.start()
    end,
})
