React Native Setup
==================

This provides the necessary instructions for setting up React Native the way it's currently set up on my computer (additional instructions for Windows computers, which mine at the time of writing is).

Prerequisites
-------------
+ Package manager (not necessary, but highly recommended)
    + Windows: [Chocolatey](https://chocolatey.org/)
    + Mac: [Homebrew](http://brew.sh/)
    + Linux: Already preinstalled

+ Packages
    + Windows: Node.js and Python 2
    + Mac/Linux: Node.js and Watchman

+ [C++ Build Tools (Windows only)](http://landinghub.visualstudio.com/visual-cpp-build-tools)
    + Choose **Custom Install** and select __both__ Windows 8.1 and Windows 10 SDKs
    + Make sure Python 2.x is in PATH
    + After installation, run `npm config set msvs_version [version year] --global` (sets global MS Visual Studio version every time `npm install` is run)

### Android Prerequisites
+ Android Studio
+ GenyMotion + VirtualBox

Installation
------------

```
npm install -g react-native-cli
```