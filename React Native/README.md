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
    + Choose **Custom Install** and select _both_ Windows 8.1 and Windows 10 SDKs
    + Make sure Python 2.x is in PATH
    + After installation, run `npm config set msvs_version [version year] --global` (sets global MS Visual Studio version every time `npm install` is run)

### Android Prerequisites
+ Android Studio
+ GenyMotion + VirtualBox
+ NOTE: Make sure to install the right Build Tools via SDK Manager for the API you're developing for

Installation
------------

Simply run `npm install -g react-native-cli`.

Running An App
--------------

### Android
1. First create a `local.properties` file in the `android` directory of the app that contains the line `sdk.dir=[path to Android sdk]` (remember to escape the colon/slashes)
2. Start up an Android emulator on Genymotion
3. Navigate to the app directory and run `react-native run-android`
    + If build attempt leads to a timeout exception in getting device list, go to Genymotion ADB settings and change SDK to custom SDK tools (browse to the Android Studio SDK)
    + If the packager does not start automatically, run `react-native start`
    + If you run into the error `ERROR Watcher took too long to load`, navigate to the file 
    `node_modules/react-native/packager/react-packager/src/DependencyResolver/FileWatcher/index.js`
    and increase `MAX_WAIT_TIME`

### iOS
1. Start up an iOS emulator on Xcode
2. Navigate to the app directory and run `react-native run-ios`