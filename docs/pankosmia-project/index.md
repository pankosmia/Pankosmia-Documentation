---
layout: default
nav_order: 2
title: The Pankosmia Project
permalink: /pankosmia-project/
---
# The Pankosmia Project
{: .no_toc }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## Project Distinctives

- radically offline-first
- support for graphite-enabled fonts
- built around Scripture Burrito for all content
- multiple "white app" products that can be branded and maintained by different organizations and developed to meet different user needs
- multiple clients per product, including standard clients for core functionality

## Architecture

Products ship as an Electronite app, ie Electron with added support for graphite-enabled fonts. A product typically includes

- a localhost HTTP server, written in Rust, that handles
  - access to local burritos
  - language and font options
  - access to burrito servers (when Internet is enabled)
  - shared application state between clients
- multiple clients, served as built HTML/CSS/Javascript:
  - core clients use React and MUI, use of other frameworks is possible
- core Node libraries to simplify the creation of new clients
- an extensive online build toolchain for multiple operating systems