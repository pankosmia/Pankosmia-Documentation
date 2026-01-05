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

## Philosophy
Pankosmia began with a conversation about the [First the monkey](https://blog.x.company/tackle-the-monkey-first-90fd6223e04d) principle. TLDR, if your project is to have a monkey recite Shakespeare on a pedestal, don't focus on the pedestal. In other words, tackle the hard bit first. For us, two of the hard bits were graphite support and guaranteeing an offline-first experience where failing to do so may put people in danger.

Some corollaries of "First the Monkey" for us are 
- focus on the hard and unsolved problems
- the working but clunky solution we can build and ship is better than both the lovely solution we can't build and ship and the lovely UI we can ship that doesn't do the right thing under the hood
- polishing things that we know how to polish is rarely urgent
- users need happy devs because devs build the systems the users need

## Project Distinctives

- open source (but third-party products may include closed-source clients)
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

