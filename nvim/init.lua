if vim.g.vscode then
    -- set leader to <Space>
    vim.g.mapleader = " "
    local opts = {noremap = true, silent = true}
    local set_key = vim.keymap.set
    set_key("n", "<leader>w",
            "<Cmd>call VSCodeCall('workbench.action.files.save')<CR>", opts)
    set_key("n", "<leader>f",
            "<Cmd>call VSCodeCall('editor.action.formatDocument')<CR>", opts)
else
    require("tats.keymaps")
    require("tats.plugins")
    require("tats.options")
end
