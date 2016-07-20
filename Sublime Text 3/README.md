Sublime Text 3
==============

Packages
--------
- [Package Control](https://packagecontrol.io/installation#st3)
    - A must-have Sublime Text package manager

- [Material Theme](https://github.com/equinusocio/material-theme)
    - Available on Package Control
	- Optional additional plugins are [Material Theme White Panels](https://github.com/equinusocio/material-theme-white-panels) and [Material Theme Appbar](https://github.com/equinusocio/material-theme-appbar), though I'm personally not a big fan of it

- [Oceanic Next Color Scheme](https://github.com/voronianski/oceanic-next-color-scheme)
    - Available on Package Control
    - Pairs up nicely with Material Theme; just make sure not to activate the UI theme, just the color scheme

- [Brogrammer Theme](https://github.com/kenwheeler/brogrammer-theme)
    - Available on Package Control

- [Markdown Preview](https://github.com/revolunet/sublimetext-markdown-preview)
    - Available on Package Control
    - Allows you to preview and build markdown documents

- [GitGutter](https://github.com/jisaacks/GitGutter)
    - Available on Package Control
    - Allows you to view git diffs in the gutter on the left

- [SublimeLinter](https://github.com/SublimeLinter/SublimeLinter3)
    - Available on Package Control
    - Framework for interactive code linting
    - [Officially supported linters](https://github.com/SublimeLinter?page=1)
        - Linters are available on Package Control
        - Examples: pep8 and pyflakes (both are recommended for Python development)

- [Base16 Theme](https://github.com/chriskempson/base16-textmate)

- [SideBarEnhancements](https://github.com/titoBouzout/SideBarEnhancements)

Settings
--------
#### General Settings
```
"always_show_minimap_viewport"  : true,
"bold_folder_labels"            : true,
"font_options"                  : ["gray_antialias", "subpixel_antialias"],
"font_size"                     : 10,
"indent_guide_options"          : ["draw_normal", "draw_active"],
"line_padding_bottom"           : 3,
"line_padding_top"              : 3,
"overlay_scroll_bars"           : "enabled",
"translate_tabs_to_spaces"      : true
```

#### Anaconda Settings
```
"anaconda_linting": false   // Disable Anaconda linting in lieu of SublimeLinter
```

### SublimeLinter Settings
```
"mark_style": squiggly_lines    // Copy default settings and add this one; changes the error style
```