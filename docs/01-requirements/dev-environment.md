---
layout: default
title: Dev Environment
permalink: /dev-environment/
parent: Requirements
---
# Dev Environment
{: .no_toc }

Local dev environment requirements for AppDev of a Desktop App repo built on Pankosmia
{: .fs-6 .fw-300 }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## Tested on:

### Ubuntu 24.04 with:
- npm 9.2.0
- node 20.11.0
- rustc 1.88.0 -- `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \| sh`

### Windows 11 with:
- git 2.44.0; See https://git-scm.com/install/windows
- npm 10.7.0
- node 20.11.0
- rustc 1.88.0 -- See https://www.rust-lang.org/tools/install
- cmake 3.31.0 -- Version 3 is required. See https://cmake.org/download/
- Depending on your system, powershell might need permission to run scripts.
- Running exe builds locally (optional) needs installation of [Inno Setup](https://jrsoftware.org/isdl.php) -tested with v6.4.3

### MacOS with:
- npm 10.7.0 (tested on Monterey)
- npm 10.8.2 (tested on Sequoia)
- node 20.11.0
- rustc 1.88.0 -- `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \| sh`
- OpenSSL 3.5.0 -- `brew install openssl` |
