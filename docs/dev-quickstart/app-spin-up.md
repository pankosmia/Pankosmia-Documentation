---
layout: default
nav_order: 2
title: App Spin-up
permalink: /app-spin-up/
parent: Dev Quickstart
---
# App Spin-up
{: .no_toc }

How to fork and configure a Desktop App repo built on Pankosmia
{: .fs-6 .fw-300 }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## Fork desktop-app-template
[Desktop-app-template](https://github.com/pankosmia/desktop-app-template) is a repo designed to be forked to spin up and maintain new Desktop App repos built on Pankosmia.

1. Start at https://github.com/pankosmia/desktop-app-template/fork

2. Choose a repository name of 30 characters or less if you want to keep **Windows developers** from needing to clone to a shorter local repo name. The windows cargo build c compiler requires repos names of 30 characters or less.

3. Create Fork

## Setup

### Recommended directory structure:
<ul><pre>
|-- repos
    |-- pankosmia
        |-- [your-desktop-app-repo-name] <b><em>(30 characters or less on windows!)</em></b>
</pre></ul>

### package.json
Replace all instances of "desktop-app-template" in package.json with "[your-desktop-app-repo-name]"

### At the root of your clone of this repo, run:
<ul><pre>
npm ci
</pre></ul>

### Edit app_config.env
Entering the App Name, version number, Apps Short Name for working directory, assets, and clients.

#### Required Assets:
- ASSET1=resource-core
- ASSET1_PATH=/runtime_resources
- ASSET1_NAME=app_resources
- ASSET2=resource-core
- ASSET2_PATH=/templates
- ASSET2_NAME=templates
- ASSET3=webfonts-core
- ASSET3_PATH=/
- ASSET3_NAME=webfonts

#### Required Clients:
- CLIENT1=core-client-dashboard
- CLIENT2=core-client-content
- CLIENT***[any number]***=core-client-settings

### Branding

Change /globalBuildResources/theme.json directly to customize your app. For helful tips, see the [Theme section of UX/UI guidelines](https://pankosmia.dev/uxui-guidelines/#theme).

For implementing your logo, see the [Branding README](https://github.com/pankosmia/desktop-app-template/tree/main/branding#readme){:target="_blank" :rel="noopener noreferrer"} for scripts to customize /globalBuildResources/*.ico, /globalBuildResources/*.png, and /globalBuildResources/icon.icns, along with info on how each is used.

### Setup Scripts

`cd [os]/scripts`

Run<sup id="a1">[[1]](#f1)</sup> the `clone` script to clone all repos listed in `app_config.env` (assets and clients)

Run<sup id="a1">[[1]](#f1)</sup> the `app_setup` script to generate the config files to match `app_config.env`. Re-run<sup id="a1">[[1]](#f1)</sup> the `app_setup` script anytime `app_config.env` is modified.

Run<sup id="a1">[[1]](#f1)</sup> the `build_clients` script to build all clients. Be patient. This will take a while.
- This script is intended for setting all clients up for <b>first use</b>, or for rebuilding <b>all</b> clients to their <b>latest main</b> branch. It changes to the main<sup id="a2">[[2]](#f2)</sup> branch, pulls the latest, and builds (or rebuilds) every client every time it is run.<br />
- Build client manually when you want to use a branch or when you only need to rebuild one client or when you do not want all clients built from their latest main branch!

Run<sup id="a1">[[1]](#f1)</sup> the `build_server` script to build the Pankosmia server and assemble the build environment. (be patient. This will also take a while.)

(Optional) Run<sup id="a1">[[1]](#f1)</sup> the `build_viewer` script to create an Electronite viewer for use with the local dev build environment.

## Running your Setup

Run<sup id="a1">[[1]](#f1)</sup> the `run` script to start the server without a browser launch.
- Only one instance of the server can be running at a time.<sup id="a3">[[3]](#f3)</sup>

Run the `viewer` script to use the Electronite viewer with the local dev build environment, or launch a browser at the location indicated.
- The Electronite viewer is Chromium compiled with [Graphite](https://graphite.sil.org/){:target="_blank" :rel="noopener noreferrer"}
- Some browsers that support graphite include [Firefox](https://www.firefox.com/){:target="_blank" :rel="noopener noreferrer"}, [Zen Browser](https://zen-browser.app/){:target="_blank" :rel="noopener noreferrer"}, and [LibreWolf](https://librewolf.net/){:target="_blank" :rel="noopener noreferrer"}.
- See [Electronite Local Dev](../electronite-local-development/) for additional detail.

## Footnotes
[<b id="f1">1</b>] ...  Windows developers, run <b>.bat</b> scripts from a <b>Powershell or Command terminal</b>:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_...repos\pankosmia\[your-desktop-app-repo-name]\windows\scripts>_ `.\[scriptname].bat`<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use a **powershell** terminal for the **.ps1** build scripts.
<br />
MacOS developers, run .bsh scripts from a **MacOS terminal**:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_...repos/pankosmia/[your-desktop-app-repo-name]/macos/scripts>_ `./[scriptname].bsh`
<br />
Linux developers, run .zsh scripts from a **linux terminal**:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_...repos/pankosmia/[your-desktop-app-repo-name]/linux/scripts>_ `./[scriptname].zsh`

[<b id="f2">2</b>] ... The build script will fail on any clients set to a different branch with uncommitted changes or with conflicts vs, the latest main pull. Scroll back up in the terminal to find any build errors and address them.

[<b id="f3">3</b>] ... If running into an error saying that another instance is running, you can either find the other instance and stop it, or simply reboot. Another instance could be one started from a .zip, .tgz, installed version, run from a different repo, or a manually started panksomia-web.
