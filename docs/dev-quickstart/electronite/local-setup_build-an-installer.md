---
layout: default
title: Local setup, build an installer
permalink: /local-setup_build-an-installer/
parent: Electronite
---
# Electron tips
{: .no_toc }

How to develop quickly on the Electron app while using a local dev server, and to produce an installer locally or via CI.
{: .fs-6 .fw-300 }

🚧 More Operating Systems to come.

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## Windows

### Prerequisites
{: .no_toc }

* Windows 10/11.
* Git, Node.js, npm, rust.
* Complete the {{ site.data.lexicon.app-name }} app [README `Setup`](https://github.com/pankosmia/desktop-app-{{ site.data.lexicon.app-name }}#desktop-app-{{ site.data.lexicon.app-name }}) first (dependencies, cloning, initial scripts).
* Inno Setup 6 at `C:\Program Files (x86)\Inno Setup 6\ISCC.exe`.
* PowerShell allowed to run scripts.

### Standalone install
{: .no_toc }

1. Install the [standalone {{ site.data.lexicon.app-name }} app](https://github.com/pankosmia/desktop-app-{{ site.data.lexicon.app-name }}/releases) and locate its installation folder.
2. You can edit the Electron bootstrap file `electron/electronStartup.js` (inside the installed app folder).
3. Start the dev server from this repo using the provided script `windows/scripts/run.bat`.
4. Launch the Electron app from the installed folder (or via the shortcut) `appLauncherElectron.bat` (it's better than the shortcut because it shows the electron output).

### Build a Windows installer
{: .no_toc }

> 💡 **Local builds advantages**.  
> You can build against your current workspace state, including clients/assets checked out on feature branches.

1. Copy your modified `electronStartup.js` (and preload.js if modified) back into the {{ site.data.lexicon.app-name }} repo so they are versioned.

2. Paste to `buildResources/electron/electronStartup.js`.

3. Choose one option between:  
   
   **Option 1 - GitHub Actions** (recommended for releases):
   
    Manually dispatch `buildMaster.yml` and wait for the Windows job (\~30 min).
   
   **Option 2 - Local build** (faster for iteration):
    
    From the root repo, in a bash terminal:
     * Run the scripts again (app\_setup, clone, etc. -this may be unnecessary).
     * Build the electron installer by running the scripts `windows\install\bundle_zip.ps1`, and `windows\install\makeAllInstallsElectronite.ps1`.

4. Outputs:
     * ZIP: `releases/windows/<run.batp>-windows-<version>.zip`
     * Electron installer (x64): `releases/windows/intel64/*.exe`