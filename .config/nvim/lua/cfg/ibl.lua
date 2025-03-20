local mod = {}

mod.setup = function()
  require("ibl").setup({
    -- char = " ",      -- this is for non active indent
    -- context_char = "┆",     -- this is for active indent
    -- use_treesitter = true,
    -- show_current_context = true,
    -- show_end_of_line = true,
    -- context_patterns = {".*"},
    -- filetype = { "lua", "python", "c", "rust", "css", "html", "htmldjango" },
    indent = {char = "|"},
    scope = {},
  })
end

return mod
