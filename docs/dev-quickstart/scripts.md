---
layout: default
nav_order: 3
title: Scripts
permalink: /scripts/
parent: Dev Quickstart
---
# Scripts
{: .no_toc }

Developer scripts for an app repos built on Pankosmia
{: .fs-6 .fw-300 }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## Use

Run<sup id="a1">[[1]](#f1)</sup> the `run` script to start the server without a browser launch.
- Consider also if you need to delete ~/pankosmia_working first.
- You'll want to restart the server if deleting ~/pankosmia_working after starting the server. To restart, exit the terminal window where the server is running the run the `run` script<sup id="a1">[[1]](#f1)</sup> again.
- Only one instance of the same server can be running at a time.

### Client development:
Manually build the client(s) changed, stop the server if is is running, then start the server (`run`).  The `run` script will re-assemble the environment to include your build.

See also [Running your setup](../app-spin-up/#running-your-setup).

To generate a release package for the OS you are using, edit the version number for the release in `app_config.env` then see the next section below, or [Local installer build](../electronite-local-development/#local-installer-build) or the bundle scripts in [Dev script reference](../script-reference/)

### To generate artifacts:
[Manually run the desired workflow](https://docs.github.com/en/actions/how-tos/managing-workflow-runs-and-deployments/managing-workflow-runs/manually-running-a-workflow#running-a-workflow) (Actions > [select workflow] > Run workflow).
- The current main branch of client repo and resource at the time of running the workflow will be used.

Download resulting artifacts (Actions > click the name of a run to see the workflow run summary > scroll down to the bottom to the Artifacts section > to download, click either the name of each artifact or the down arrow on each row

Any double-compressed artifacts should have one layer uncompressed before release, e.g.:
- Strip *.tgz.zip down to *.tgz
- Strip *.zip.zip down to *.zip
- If working from windows, avoid releasing a re-zipping a macos or linux zip package if a .pkg, .sh, .bsh, .zsh was in the layer re-zipped in windows. Doing so would otherwise remove file permission settings of `chmod +x` where they are needed.
- Release the *.pkg.zip layer as .zip as it includes a README file in the same layer as the pkg, which contains installation and upgrade instructions / info.

Upload releases manually by going to the Release section of your repo and selecting "Draft a new release".

## Maintenance

To update the server, change the [latest version](https://crates.io/search?q=pankosmia-web) of [panksomia-web](https://docs.rs/pankosmia_web/latest/pankosmia_web/) in `/local_server/Cargo.toml` and re-run the `build_server` script.

To sync this repo with its upstream, run the `sync` script.

## Footnotes
[<b id="f1">1</b>] ...  Windows developers, run <b>.bat</b> scripts from a <b>Powershell or Command prompt</b>:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_...repos\pankosmia\[your-desktop-app-repo-name]\windows\scripts>_ `.\[scriptname].bat`<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The `.\` is optional from a command prompt.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use a **powershell** terminal for the **.ps1** build scripts.
<br />
MacOS developers, run .bsh scripts from a **MacOS terminal**:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_...repos/pankosmia/[your-desktop-app-repo-name]/macos/scripts>_ `./[scriptname].bsh`
<br />
Linux developers, run .zsh scripts from a **linux terminal**:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_...repos/pankosmia/[your-desktop-app-repo-name]/linux/scripts>_ `./[scriptname].zsh`
