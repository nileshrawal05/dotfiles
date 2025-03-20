local mod = {}

vim.keymap.set("n", "\\", "<nop>")
vim.keymap.set("n", "\\\\", function()
    vim.cmd("Neorg workspace")
    vim.cmd("Neorg index")
    -- vim.cmd("colorscheme gruvbox")
    vim.cmd("cd ~/Documents/journals/")
end)

vim.keymap.set("n", "\\r", function ()
    vim.cmd("Neorg return")
end)
return mod
