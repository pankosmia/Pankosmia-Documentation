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
<ul><pre>
npm install
</pre></ul>

### {% include t.html key="heading_edit_app_config" %}
{% include t.html key="edit_app_config_intro" %}

#### {% include t.html key="heading_required_assets" %}
- ASSET1=resource-core
- ASSET1_PATH=/runtime_resources
- ASSET1_NAME=app_resources
- ASSET2=resource-core
- ASSET2_PATH=/templates
- ASSET2_NAME=templates
- ASSET3=webfonts-core
- ASSET3_PATH=/
- ASSET3_NAME=webfonts

#### {% include t.html key="heading_required_clients" %}
- CLIENT1=core-client-dashboard
- CLIENT2=core-client-content
- CLIENT***[{% include t.html key="any_number" %}]***=core-client-settings

### {% include t.html key="heading_branding" %}

{% include tm.html key="branding_theme" %}

{% include tm.html key="branding_logo" %}

### {% include t.html key="heading_setup_scripts" %}

`cd [os]/scripts`

{% include tm.html key="setup_scripts_clone" %}

{% include tm.html key="setup_scripts_app_setup" %}

{% include tm.html key="setup_scripts_build_clients" %}
- {% include tmp.html key="setup_scripts_build_clients_note1" %}
- {% include t.html key="setup_scripts_build_clients_note2" %}

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
{% include tcm.html key="footnote1" %}
