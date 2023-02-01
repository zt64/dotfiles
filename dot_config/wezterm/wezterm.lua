local wezterm = require "wezterm"

function scheme_for_appearance(appearance)
    if appearance:find "Dark" then
        return "Catppuccin Mocha"
    else
        return "Catppuccin Latte"
    end
end

return {
    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
    mouse_bindings = {
        -- Change the default selection behavior so that it only selects text,
        -- but doesn't copy it to a clipboard or open hyperlinks.
        {
            event={Up={streak=1, button="Left"}},
            mods="NONE",
            action=wezterm.action{ExtendSelectionToMouseCursor="Cell"}
        },
        -- Don't automatically copy the selection to the clipboard
        -- when double clicking a word
        {
            event={Up={streak=2, button="Left"}},
            mods="NONE",
            action="Nop"
        },
        -- Ctrl-click will open the link under the mouse cursor
        {
            event={Up={streak=1, button="Left"}},
            mods="CTRL",
            action="OpenLinkAtMouseCursor"
        },
    },
    color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
}