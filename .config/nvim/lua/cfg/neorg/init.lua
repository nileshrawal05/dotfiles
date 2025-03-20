local mod = {}
function mod.init()
    local opts = {
        load = {
            ["core.defaults"] = {}, -- Load all the default modules
            ["core.concealer"] = {
                config = {
                    icon_preset = "diamond",
                    icons = {
                        heading = {
                            level_1 = { icon = "❖" },
                            level_2 = { icon = "◈" },
                            level_3 = { icon = "⟡" },
                            level_4 = { icon = "◇" },
                            level_5 = { icon = "◆" },
                            level_6 = { icon = "⋄" },
                          },
                          code_block = {
                            width = "content"
                          }
                    }
                }
            }, -- Allows for use of icons
            ["core.export"] = {},
            ["core.ui.calendar"] = {},
            ["core.export.markdown"] = {
                config = {
                    extensions = { "todo-items-basic", "todo-items-pending", "todo-items-extended", "definition-lists",
                        "mathematics" }
                }
            },
            ["core.integrations.telescope"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        my_workspace = "~/.local/share/notes/",
                        v_workspace = "~/Documents/journals/"
                    },
                    default_workspace = "v_workspace",
                },
            },
            ["core.completion"] = {
                config = {
                    engine = "nvim-cmp",
                },
            },
            ["core.summary"] = {},
            ["core.keybinds"] = {
                config = {
                    default_keybinds = true,
                    neorg_leader = "\\",
                    hook = require("cfg.neorg.keymaps").set_keymaps,
                },
            },
            ["core.looking-glass"] = {},
        },
    }

    require("neorg").setup(opts)
end

return mod
