# IntelliJ IDEA Setup

## General Appearance
- [Material Theme](https://github.com/ChrisRM/material-theme-jetbrains)
	- Available by going to **Settings/Preferences/Plugins** in IDEA, selecting **Browse repositories...**, and searching for `Material Theme UI`
	- Switch theme color via **Tools -> Material Theme**
	- Make sure to set the general appearance (in **Settings/Appearance & Behavior/Appearance**) to `Darcula`

- General font settings (**Settings/Editor/Colors & Fonts/Font**):
    - Font: Monospaced
	- Size: 14
	- Line spacing: 1.2

- Console font settings (**Settings/Editor/Colors & Fonts/Console Font**):
    - Font: Monospaced
	- Size: 12
	- Line spacing: 1.6

- Line coverage settings (**Settings/Editor/Colors & Fonts/General**):
	- Full: `005EC7` (background only)
	- Uncovered: `AB4F2A` (background only)

## Plugins

- Eclipse Code Formatter
    - Set **Eclipse Java Formatter config file** to the provided `formatter.xml`
    - Set **Import order** to the provided `eclipse.importorder`
- MetricsReloaded
- String Manipulation
- Material Theme UI (see **General Appearance**)

## Code Style/Inspection Settings

- **Editor/Code Style/Java**
    - **Imports**
        - Use single class import
        - Class count to use import with '*': 99
        - Names count to use static import with '*': 99

    - **Code Generation**
        - Check `Make local variable final` and `Make generated parameters final`

    - **Wrapping and Braces**
        - Any line with `force braces`, choose `Always`

- **Editor/Inspections**
    - Set `Field may be final` and `local variable or parameter can be final` to severity `Error`