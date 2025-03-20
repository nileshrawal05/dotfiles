require("cfg")
require("cfg.utils")
require("cfg.global_keymaps")
require("cfg.lazy")
require("cfg.lsp").setup()
vim.cmd([[colorscheme catppuccin]])
vim.g.vimtex_compiler_latexmk = {
    options = {
    },
}
