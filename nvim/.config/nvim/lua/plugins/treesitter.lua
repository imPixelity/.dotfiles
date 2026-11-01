require("nvim-treesitter").setup()

require("nvim-treesitter").install({
    "lua",
    "qmljs",
    "go"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua",
        "qml",
        "go"
    },
    callback = function()
        vim.treesitter.start()
    end,
})
