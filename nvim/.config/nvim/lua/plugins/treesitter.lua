require("nvim-treesitter").setup()

require("nvim-treesitter").install({
    "lua",
    "qmljs",
    "go",
    "c"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua",
        "qml",
        "go",
        "c"
    },
    callback = function()
        vim.treesitter.start()
    end,
})
