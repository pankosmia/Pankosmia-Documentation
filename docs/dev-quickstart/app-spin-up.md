---
layout: default
nav_order: 2
title: App Spin-up
i18n_key: app_spin-up
lang: en
permalink: /app-spin-up/
parent: Dev Quickstart
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{: .no_toc }

{% include t.html key="subtitle" %}
{: .fs-6 .fw-300 }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_fork_template" %}
{% include tm.html key="fork_template_intro" %}

1. {% include t.html key="fork_step1" %} [https://github.com/pankosmia/desktop-app-template/fork](https://github.com/pankosmia/desktop-app-template/fork)

2. {% include t.html key="fork_step2" %}

3. {% include t.html key="fork_step3" %}

## {% include t.html key="heading_setup" %}

### {% include t.html key="heading_directory_structure" %}
<ul><pre>
|-- repos
    |-- pankosmia
        |-- [your-desktop-app-repo-name] <b><em>({% include t.html key="30_chars" %})</em></b>
</pre></ul>

### package.json
{% include t.html key="package_json_instructions" %}

### {% include t.html key="heading_npm_install" %}

{: .highlight-title }
> {% include tcmp.html key="pnpm_migration_title" %}
>
> {% include tcmp.html key="pnpm_migration" %}

| `pnpm-lock.yaml`| `package-lock.json` |
|---|---|
| > `pnpm install` | > `npm install` |

### {% include t.html key="heading_edit_app_config" %}
{% include tm.html key="edit_app_config_intro" %}

#### {% include t.html key="heading_required_assets" %}
```
  "assets": [
    { "repo": "resource-core", "path": "/runtime_resources", "name": "app_resources", "branches": ["dev", "qa", "main"] },
    { "repo": "resource-core", "path": "/templates",         "name": "templates",     "branches": ["dev", "qa", "main"] },
    { "repo": "webfonts-core", "path": "/",                  "name": "webfonts",      "branches": ["dev", "qa", "main"] }
  ],
```

#### {% include t.html key="heading_required_clients" %}
{% include tm.html key="required_clients" %}

#### {% include t.html key="heading_some_optional_clients" %}
{% include tm.html key="sequential" %}
```
  "clients": [
    { "repo": "core-client-dashboard",                "branches": ["dev", "qa", "main"] },
    { "repo": "core-client-content",                  "branches": ["dev", "qa", "main"] },
    { "repo": "core-client-settings",                 "branches": ["dev", "qa", "main"] },
    { "repo": "core-contenthandler-generic",          "branches": ["dev", "qa", "main"] }
  ],
```

### {% include t.html key="heading_branding" %}

{% include tm.html key="branding_theme" %}

{% include tm.html key="branding_logo" %}

### {% include t.html key="heading_setup_scripts" %}

`cd [os]/scripts`

{% include tm.html key="setup_scripts_clone" %}

{% include tm.html key="setup_scripts_build_clients" %}
- {% include tmp.html key="setup_scripts_build_clients_note1" %}
- {% include tmp.html key="setup_scripts_build_clients_note2" %}

{% include tm.html key="setup_scripts_build_server" %}

{% include tm.html key="setup_scripts_build_viewer" %}

## {% include t.html key="heading_running_your_setup" %}

{% include tm.html key="running_run_script" %}
- {% include t.html key="running_one_instance" %}

{% include tm.html key="running_viewer_script" %}
- {% include tmp.html key="running_viewer_graphite" %}
- {% include tmp.html key="running_viewer_browsers" %}
- {% include tmp.html key="running_viewer_see_also" %}

## {% include tc.html key="heading_footnotes" %}
[<b id="f1">1</b>] ... {% include tcmp.html key="footnote1" %}
