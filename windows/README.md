# Windows

## Powershell

- Creates a symlink for `profile.ps1` to point to this one
- Creates a symlink for [hyper's](https://hyper.is/) config to point to this one
  - Sets Powershell as the default shell
  - Installs the following extensions:
    - [hyper-chesterish](https://www.npmjs.com/package/hyper-chesterish)
    - [hyperterm-tabs](https://www.npmjs.com/package/hyperterm-tabs)
    - [hyper-tabs-enhanced](https://www.npmjs.com/package/hyper-tabs-enhanced)
    - [hypercwd](https://www.npmjs.com/package/hypercwd)

If Powershell raises an error about not being able to run `profile.ps1` because it is not digitally signed, perform the following steps:

1. Make sure `profile.ps1` is not blocked (you can check this by checking the file's properties)
2. Run (as Administrator) `Set-ExecutionPolicy RemoteSigned`
