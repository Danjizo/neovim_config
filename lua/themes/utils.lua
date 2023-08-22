-- Set colorscheme
-- @param colorscheme string?
function set_colorscheme(colorscheme)
    require_status_ok, _ = pcall(require, "themes." .. colorscheme)   -- Load colorscheme config
    if not require_status_ok then
        vim.notify("Colorscheme configuration for " .. colorscheme .. " not found. Using default.")
    end
    setcs_status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    if not setcs_status_ok then
        vim.notify("ERROR: colorscheme " .. colorscheme .. " not found!")
        return
    end
end



