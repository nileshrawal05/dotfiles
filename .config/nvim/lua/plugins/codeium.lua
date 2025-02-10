-- return {
-- 	"Exafunction/codeium.nvim",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		"hrsh7th/nvim-cmp",
-- 	},
-- 	config = function()
-- 		require("codeium").setup({})
-- 	end,
-- }
return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		-- Setup key mappings for Codeium completion using vim.keymap.set
		vim.keymap.set("i", "<C-f>", "<Cmd>CodeiumComplete<CR>", { noremap = true, silent = true })
		vim.keymap.set("i", "<C-j>", "<Cmd>CodeiumNextCompletion<CR>", { noremap = true, silent = true })
		vim.keymap.set("i", "<C-k>", "<Cmd>CodeiumPreviousCompletion<CR>", { noremap = true, silent = true })
	end,
}
