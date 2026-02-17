---
layout: default
nav_order: 2
title: Developer Script Reference
permalink: /script-reference/
parent: AppDev
---
# Developer  Script Reference
{: .no_toc }

Developer scripts for an app repos built on Pankosmia
{: .fs-6 .fw-300 }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

# Additional Info TL;DR - For reference when needed!
## Ecosystem setup and configuration
This repo pulls together several libraries and projects into a single app. The projects are spread across several repos to allow modular reuse. Scripts follow for assisting in setup, though it can also all be setup manually. The following assume [the repos](https://github.com/pankosmia/repositories) are installed with the following directory structure.

This is an example. Clients in use may vary. Configuration is handled via `app_config.env`and the `app_setup` script.

<pre>
|-- repos
    |-- pankosmia
        |-- core-client-content repository
        |-- core-client-dashboard repository
        |-- core-client-i18n-editor repository
        |-- core-client-remote-repos repository
        |-- core-client-settings repository
        |-- core-client-workspace repository
        |-- [your-desktop-app-repo-name] <b><em>(30 characters or less on windows!)</em></b>
        |-- resource-core
        |-- webfonts-core
</pre>

## Installing the clients
The local_server (pankosmia_web) serves compiled files from the `build` directory of each client, each client must be built. 

This is handled by the `clone` and `build_clients` scripts, though can also all be run manually which is helpful during development.
```
# In each client repo, NOT this repo!
npm install
npm run build
```
Running `run`, `build_server`, or `bundle_...` all copy the latest build to the build environment.

## Scripts

### Configuration

Config files must match clients and assets utilized. Scripts that write them are provided, as per `app_config.env`. Files created by the app_setup script are:

| Linux | Windows | MacOS |
|-------|---------|-------|
| <pre>buildSpec.json<br />/globalBuildResources/i18nPatch.json<br />/globalBuildResources/product.json<br />/linux/buildResources/setup/app_setup.json</pre> | <pre>buildSpec.json<br />\globalBuildResources\i18nPatch.json<br />\globalBuildResources\product.json<br />\windows\buildResources\setup\app_setup.json</pre> | <pre>buildSpec.json<br />/globalBuildResources/i18nPatch.json<br />/globalBuildResources/product.json<br />/macos/buildResources/setup/app_setup.json</pre> 

Review `app_config.env` and adjust as needed, then run one of the setup scripts that follow.  Re-run the app_setup script anytime `app_config.env` is changed.

#### Config scripts:
Run from the provided location:
| Description | Linux | Windows | MacOS |
|-------------|-------|---------|-------|
| Uses app_config.env to generate/rebuild/replace app_setup.json, buildSpec.json, product.json, and i18nPatch.json| `/linux/scripts/app_setup.bsh` | `\windows\scripts\app_setup.bat` | `/macos/scripts/app_setup.zsh` |

#### Setup scripts:
Run from the provided location:
| Description | Linux | Windows | MacOS |
|-------|-------|---------|-------|
| Clones all repos in `/app_config.env` if a directory by that name does not already exit | /linux/scripts/clone.bsh<br /> Default clones via HTTPS.<br />Optional argument:<br />`./clone.bsh -s`<br /> Clones via SSH. | \windows\scripts\clone.bat<br /> Default clones via HTTPS.<br />Optional argument:<br />`.\clone.bat -s`<br /> Clones via SSH. | /macos/scripts/clone.zsh<br /> Default clones via HTTPS.<br />Optional argument:<br />`./clone.zsh -s`<br /> Clones via SSH. |
| For each asset repo in `/app_config.env`: git checkout main, git pull<br />For each client repo in  `/app_config.env`: `git checkout main`, `git pull`, `npm install`, and `npm run build`.<br />***Dev's should build manually when testing branch(es).*** | /linux/scripts/build_clients.bsh | \windows\scripts\build_clients.bat | /macos/scripts/build_clients.zsh |
| Create an Electronite viewer for use with the local dev build environment. | /linux/scripts/build_viewer.bsh | \windows\scripts\build_viewer.ps1<br />(use a powershell terminal) | /macos/scripts/build_viewer.zsh |

#### Usage scripts:

Note: Multiple arguments can be applied in any order, e.g., `./run.zsh -s -d` is the same as `./run.zsh -d -s`

| Description | Linux | Windows | MacOS |
|-------|-------|---------|-------|
| removes the build directory and runs `cargo clean`<br />**(%)** | /linux/scripts/clean.bsh<br />Optional arguments:<br />`./clean.bsh -s`<br /> Will not ask if server is off  | \windows\scripts\clean.bat<br />Optional arguments:<br />`.\clean.bat -s`<br /> Will not ask if server is off | /macos/scripts/clean.zsh<br />Optional arguments:<br />`./clean.zsh -s`<br /> Will not ask if server is off |
| runs cargo build, and `node build.js` | /linux/scripts/build_server.bsh<br />Optional arguments:<br />`./build_server.bsh -s`<br /> Will not ask if server is off <br />`./build_server.bsh -d`<br /> Builds server in debug mode | \windows\scripts\build_server.bat<br />Optional arguments:<br />`.\build_server.bat -s`<br /> Will not ask if server is off<br />`.\build_server.bat -d`<br /> Builds server in debug mode | /macos/scripts/build_server.zsh<br />Optional arguments:<br />`./build_server.zsh -s`<br /> Will not ask if server is off <br />`./build_server.zsh -d`<br /> Builds server in debug mode |
| Assembles the build environment (clients) and starts the server **(*)** | /linux/scripts/run.bsh<br />Optional arguments:<br />`./run.bsh -s`<br /> Will not ask if server is off<br />`.\run.bsh -d`<br /> Runs with server in debug mode | \windows\scripts\run.bat<br />Optional arguments:<br />`.\run.bat -s`<br /> Will not ask if server is off<br />`.\run.bat -d`<br /> Runs with server in debug mode | /macos/scripts/run.zsh<br />Optional arguments:<br />`./run.zsh -s`<br /> Will not ask if server is off<br />`.\run.zsh -d`<br /> Runs with server in debug mode |
| Launches the Electronite viewer for use with the dev environment. (Requires the viewer having previously been created via the `build_viewer` script.) | /linux/scripts/viewer.bsh<br />Dev Tools: Ctrl + Shift + I<br />Optional argument:<br />`./viewer.bsh [PORT#]`<br />(default is 19119) | \windows\scripts\viewer.bat<br />Dev Tools: Ctrl + Shift + I<br />Optional argument:<br />`.\viewer.bat [PORT#]`<br />(default is 19119) | /macos/scripts/viewer.zsh<br />Dev Tools: Cmd + Option + I<br />Optional argument:<br />`./viewer.zsh [PORT#]`<br />(default is 19119) |
| Deletes the last bundles and temp contents for the given OS (if they exist), then on this repo runs `git checkout main`, `git pull`, and `npm install`, runs `app_setup.bat` to ensure version consistency, runs `node build.js`, then makes a zip release bundle and a stand-alone installer. **(*) (•)** | /linux/scripts/bundle_viewer.bsh<br />(Only builds and bundles the viewer. Do all else in the description manually or through other scripts listed here.) | \windows\scripts\bundle_viewer.ps1<br />Optional arguments:<br /><nobr>`.\bundle_viewer.ps1 -ServerOff "Y"`</nobr><br /> or: "y"; Will not ask if server is off | /macos/scripts/bundle_viewer.zsh<br />Optional arguments:<br />`./bundle_viewer.zsh -s`<br> Will not ask if server is off |
| Deletes the last .zip release bundle if it it exists, then on this repo runs `git checkout main`, `git pull`, and `npm install`, runs `app_setup.bat` to ensure version consistency, runs `node build.js`, then makes a zip release bundle **(*)** | /linux/scripts/bundle_tgz.bsh<br />Optional arguments:<br />`./bundle_tgz.bsh -s`<br /> Will not ask if server is off<br />`/bundle_tgz.bsh -g`<br /> Run from Github Actions | \windows\scripts\bundle_zip.ps1<br />Optional arguments:<br />-ServerOff "Y"<br /> or: "y"; Will not ask if server is off<br />-IsGHA "Y"<br /> or: "y"; Run from Gihtub Actions | /macos/scripts/bundle_zip.zsh<br />Optional arguments:<br />`/bundle_zip.zsh -s`<br /> Will not ask if server is off<br />`/bundle_zip.zsh -g`<br /> Run from Github Actions |
| Deletes the last .exe release bundle if it it exists, then on this repo runs `git checkout main`, `git pull`, and `npm install`, runs `app_setup.bat` to ensure version consistency, runs `node build.js`, then makes an exe installer **(*)** **(&bull;)** | | \windows\scripts\bundle_exe.ps1<br />Optional arguments:<br /><nobr>`bundle_exe.ps1 -ServerOff "Y"`</nobr><br /> or: "y"; Will not ask if server is off<br />**(&bull;)** | |

**(*)** ***Ensure the server (build_server.bat) is current!***<br />
**(&bull;)** ***Environment prerequisite for running the exe build locally: Install [Inno Setup](https://jrsoftware.org/isdl.php) -tested with v6.4.3***<br />
**(%)** ***Targeted clean tips:***
- To clean just the dev server: cd to the /local_server directory and run `cargo clean --target-dir target/debug`
- To clean just the dev server: cd to the /local_server directory and run `cargo clean --target-dir target/release`
- To clean just the build environment, cd to the subdirectory for your OS (i.e., /macos, /linux, or /windows), then recursively remove its build subdirectory.
- (The clean script does all of the above.)

#### Maintenance scripts:
Run from the provided location:
| Description | Linux | Windows | MacOS |
|-------|-------|---------|-------|
| Facilitates syncing with upstream with exclusion of files expected to differ: | /linux/scripts/sync.bsh<br />Optional arguments:<br />`./sync.bsh -p`<br /> Will not ask if latest is already pulled. | \windows\scripts\sync.bat<br />Optional arguments:<br />`.\sync.bat -p`<br /> Will not ask if latest is already pulled | /macos/scripts/sync.zsh<br />Optional arguments:<br />`./sync.zsh -p`<br /> Will not ask if latest is already pulled. |
