---
layout: default
title: Decluttering Repos
permalink: /decluttering-repos/
parent: Dev Reference Manual
---
# Decluttering Repos
{: .no_toc }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## Identifying potential unused [files || dependencies || exports], unlisted dependencies, or duplicated exports

**!Important** -- False positives may be listed. Avoid blindly implementing everything reported. Look, verify, and test.
- Do your own search for things like reported unused exports

**!Understand** -- The following method is quite helpful on projects constructed with a packages.json and an index.js for the test to step through all includes in the app. (e.g., It is ***not*** meant for resource-core, webfonts-core, pankosmia-web, or desktop-app-*.)

### Setup
`npm install -g knip`  (to install or update)

### Analyzing a repo
In the root of the client repo in a teriminal, enter `knip`. It will provide a list of any of any unused, unlisted, or duplicated things that it ***thinks*** it has found.

### Example of false positives on unused exports
- It will report `Selection.styles.jsx` as an unused export (because of the filename) even when it is in use. Be careful to not remove this file where its export is actually in use.

### Example of reported duplicated exports not actually causing a problem
- `Selection.styles.jsx` is exporting `sx`, which works fine as used.

### Example of false positive on unused dependencies
Knip is quite good at following the include chain throughout a project.  However, sometimes dependencies are in place outside of this chain, which it will miss.
- Where a package.json includes use of "react-scripts" in its scripts section, it's dependency chain includes babel which includes a devDependency of @babel/plugin-proposal-private-property-in-object. Knip will miss that case and report that as an unused dependency.

## Applying package changes

There are differences between manually editing package.json and running `npm install` / `npm prune` vs running `npm [package] uninstall`.
- Use `npm [package] uninstall`
- Use `npm [package] install` or for devDepndencies: `npm [package] uninstall -D` or --save-dev.

That will help keep package-lock.json and node_modules consistent!

A little additional info for the curious:
- `npm prune` (after a manual package.json edit) does not update package-lock.json to reflect the removal, and it not run uninstall lifecycle scripts (which let packages perform custom actions automatically).