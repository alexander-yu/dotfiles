# Windows Command Line

## cmder
Download and install [cmder](http://cmder.net/). To get more themes, one good source would be [here](https://github.com/joonro/ConEmu-Color-Themes).

## Powershell
Place the `profile.ps1` file into the `Documents\WindowsPowerShell` directory and reload Powershell. If Powershell raises an error about not being able to run the script because it is not digitally signed, perform the following steps:

1. Make sure `profile.ps1` is not blocked (you can check this by checking the file's properties)

2. Run (as Administrator) `Set-ExecutionPolicy RemoteSigned`

Next, install [Scoop](http://scoop.sh/) if not already installed, and use that to install [concfg](https://github.com/lukesampson/concfg) and [pshazz](https://github.com/lukesampson/pshazz) by running:
```
scoop install concfg
scoop install pshazz
concfg import oceanicnext [or any other theme]
pshazz use msys [or any other prompt; use keepprompt to use the prompt in profile.ps1]
```
If an error is thrown about `Get-ChildItemColor` or `PSReadLine` not existing as modules, run `Install-Module Get-ChildItemColor` and `Install-Module PSReadline` (make sure you have PowerShellGet installed, which should be packaged with Chocolatey).

## Conda Environments

If working with `conda` environments, currently the `activate` and `deactivate` scripts do not work within Powershell (though it does work for Command Prompt); in other words, the environment functionality is broken for Powershell. As a temporary fix until this issue is resolved within Anaconda, copy the scripts [here](https://github.com/Liquidmantis/PSCondaEnvs) into `[Anaconda Installation]\Scripts`. The PS1 scripts should take precedence over the BAT scripts when working with Powershell.

## Summary of Useful Utilities
- [Chocolatey](https://chocolatey.org/)
- [Scoop](http://scoop.sh/)
- [concfg](https://github.com/lukesampson/concfg)
- [pshazz](https://github.com/lukesampson/pshazz)
- [cmder](http://cmder.net/)