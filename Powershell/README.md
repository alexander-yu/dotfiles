Powershell
==========

Setup
-----
Place the `profile.ps1` file into the `Documents\WindowsPowerShell` directory and reload Powershell. If Powershell raises an error about not being able to run the script because it is not digitally signed, perform the following steps:

1. Make sure `profile.ps1` is not blocked (you can check this by checking the file's properties)

2. Run (as Administrator) `Set-ExecutionPolicy RemoteSigned`