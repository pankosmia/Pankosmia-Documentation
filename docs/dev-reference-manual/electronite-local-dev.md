---
layout: default
title: Electronite Local Dev
permalink: /electronite-local-dev/
parent: Dev Reference Manual
---
# Electronite local dev
{: .no_toc }

How to make dev changes to Electronite while using a local dev server.
{: .fs-6 .fw-300 }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## Windows, MacOS, or Linux

### Prerequisites
{: .no_toc }

1. See [README 'Environment requirements for this repo'](https://github.com/pankosmia/desktop-app-template/blob/main/README.md#environment-requirements-for-this-repo).
2. Follow the [README 'Setup'](https://github.com/pankosmia/desktop-app-template/blob/main/README.md#setup).

### Electronite Dev Viewer

1. 💡 To create an Electronite viewer for use with your local dev build environment, run this script once while online:
  - Linux:	`cd linux/scripts` then `./build_viewer.bsh`
  - Windows: `cd windows\scripts` then `.\build_viewer.ps1` (use a powershell terminal)
  - MacOS: `cd macos/scripts` the `./build_viewer.zsh`

2. Read the 'Run ...' and 'Client Development ...' bullets at the top of app [README 'Use'](https://github.com/pankosmia/desktop-app-template#use).
  - 💡 When the server is running (the `run` script), start the Electronite viewer created by the `build_viewer` script:
    - Linux: `cd linux/scripts` then `./viewer.bsh` -- Dev Tools: Ctrl + Shift + I
    - Windows: `cd windows\scripts` then `.\viewer.bat` -- Dev Tools: Ctrl + Shift + I
    - MacOS: `cd macos/scripts` then `./viewer.zsh` -- Dev Tools: Cmd + Option + I

### Making dev changes to Electronite

Electronite is a drop-in replacement for electron that provides an enhanced font rendering system. Make your dev changes the same way as for an Electron viewer.

This project works in either a web browser or the Electronite viewer. Only add code to Electron/Electronite that are necessary for it to handle things that web browser already do (e.g., Print, Find, Zoom, Back, Forward). Avoid coding in such a way that prevents web browser use.

💡 The way to develop in Electronite is to start by modifying the code that is used by your dev viewer. The file structure to focus on is below, in particular `electronStartup.js` and `preload.js`. Make changes here first to test in local dev:
<pre>
|-- [linux | windows | macos]
    |-- viewer
        |-- project
            |-- payload
                |-- app
                    |-- appLauncherElectron.sh | appLauncherElectron.bat
                    |-- electron
                        |-- electronStartup.js
                        |-- favicon.png
                        |-- favicon@1.5x.png
                        |-- favicon@1.25x.png
                        |-- favicon@2x.png
                        |-- preload.js
</pre>

### Deploying tested dev changes to Electronite

If changes to `electronStartup.js` are required, reproduce these changes in the following two files:
<pre>
|-- buildResources
    |-- electron
        |-- electronDevStartup.js (used by the viewer and the Linux app; launches the viewer without starting the server)
        |-- electronStartup.js (used by the Windows and MacOS apps; starts the server then launches the viewer)

</pre>

Test `electronDevStartup.js` by re-running the `build_viewer` script. See [Electronite Dev Viewer](#electronite-dev-viewer) above. Also used in the Linux app.
Test `electronStartup.js` by either building locally on Windows or MacOS or by pushing a branch, building via git hub actions, then testing the resulting stand-alone installs for Windows/MacOS.

If a change needs to be made to favicon*.png, make those changes in the `globalBuildResources` directory. The same test instructions above apply.

If a change needs to be made to the `appLauncherElectron` script, it will need to be made in 3 different places and tested on three different operating systems. Those file lives at:
  - linux\buildResources\appLauncherElectron.sh
  - windows\buildResources\appLauncherElectron.bat
  - macos\buildResources\appLauncherElectron.sh

Test by either building locally on all three operating systems, or by pushing a branch, building via git hub actions, then testing the resulting stand-alone installs.

### Local Installer Build
{: .no_toc }

#### Prerequisites:
  - Ensure the server (`build_server` script) is current!
  - Windows has an additional requirement for running this `bundle_viewer` build locally:
    - Install [Inno Setup](https://jrsoftware.org/isdl.php) -tested with v6.4.3

#### `bundle_viewer` script

- Windows - `cd windows\scripts` then `.\bundle_viewer.ps1`
  - Optional arguments:
    - `.\bundle_viewer.ps1 -ServerOff "Y"`  
       or: "y"; Will not ask if server is off
  - Deletes the last bundles and temp contents for the given OS (if they exist), then on this repo runs git checkout main, git pull, and npm install, runs app_setup.bat to ensure version consistency, runs node build.js, then makes a zip release bundle and a stand-alone exe installer.


- MacOS - `cd /macos/scripts` the `./bundle_viewer.zsh`
  - Optional arguments:
    - `./bundle_viewer.zsh -s`  
       Will not ask if server is off
  - Deletes the last bundles and temp contents for the given OS (if they exist), then on this repo runs git checkout main, git pull, and npm install, runs app_setup.bat to ensure version consistency, runs node build.js, then makes a zip release bundle and a stand-alone exe installer.

- Linux - `cd /linux/scripts` the `./bundle_viewer.bsh`
  - Before running:
    - manually delete prior local builds
    - npm install (if not already run)
    - app_setup.bat to ensure version consistency (unless already current)
    - run run `./bundle_tgz.bsh`
    - then run `./bundle_viewer.bsh`

#### `bundle_viewer` script Outputs:
- Windows: `releases\windows\intel64\[app-name]-windows-setup-standalone-[version].exe`
- MacOS: `releases/macos/[intel64|arm64]/[app-name]-macos-installer-standalone-[intel64|arm64]-[version].pkg`
- Linux: `releases/linux/[app-name]-linux-standalone-intel64-[version].deb`