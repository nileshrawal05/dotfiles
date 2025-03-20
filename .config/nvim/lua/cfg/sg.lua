local mod = {}

mod.setup = function()
    vim.keymap.set("v", "<leader>sg", "CodyAsk", { silent = true })
end

return mod
