# Powershell

Place the `profile.ps1` file into the `Documents\WindowsPowerShell` directory and reload Powershell. If Powershell raises an error about not being able to run the script because it is not digitally signed, perform the following steps:

1. Make sure `profile.ps1` is not blocked (you can check this by checking the file's properties)

2. Run (as Administrator) `Set-ExecutionPolicy RemoteSigned`

## Conda Environments

If working with `conda` environments, currently the `activate` and `deactivate` scripts do not work within Powershell (though it does work for Command Prompt); in other words, the environment functionality is broken for Powershell. As a temporary fix until this issue is resolved within Anaconda, copy the scripts [here](https://github.com/Liquidmantis/PSCondaEnvs) into `[Anaconda Installation]\Scripts`. The PS1 scripts should take precedence over the BAT scripts when working with Powershell.