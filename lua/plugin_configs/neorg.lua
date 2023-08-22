return function()
    require('neorg').setup( {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.concealer"] = {}, -- Adds pretty icons to your documents
            ["core.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        notes = "~/notes",
                        ceh = "~/notes/ceh",
                        work = "~/work",
                        linux = "~/notes/linux",
                    },
                    default_workspace = "notes",
                },
            },
        },
    } )
end
