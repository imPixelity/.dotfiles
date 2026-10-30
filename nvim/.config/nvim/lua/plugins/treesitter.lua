require("nvim-treesitter").setup()

require("nvim-treesitter").install({
    "lua",
    "go"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua",
        "go"
    },
    callback = function()
        vim.treesitter.start()
    end,
})
