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

How to fork and configure a Desktop App repo built on Pankosmia
{: .fs-6 .fw-300 }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_fork_template" %}
{% include tm.html key="fork_template_intro" %}

1. {% include t.html key="fork_step1" %}

2. {% include t.html key="fork_step2" %}

3. {% include t.html key="fork_step3" %}

## {% include t.html key="heading_setup" %}

### {% include t.html key="heading_directory_structure" %}
<ul><pre>
|-- repos
    |-- pankosmia
        |-- [your-desktop-app-repo-name] <b><em>(30 characters or less on windows!)</em></b>
</pre></ul>

### {% include t.html key="heading_package_json" %}
{% include t.html key="package_json_instructions" %}

### {% include t.html key="heading_run_npm_ci" %}
<ul><pre>
npm ci
</pre></ul>

### {% include t.html key="heading_edit_app_config" %}
{% include t.html key="edit_app_config_intro" %}

#### {% include t.html key="heading_required_assets" %}
- {% include t.html key="asset1" %}
- {% include t.html key="asset1_path" %}
- {% include t.html key="asset1_name" %}
- {% include t.html key="asset2" %}
- {% include t.html key="asset2_path" %}
- {% include t.html key="asset2_name" %}
- {% include t.html key="asset3" %}
- {% include t.html key="asset3_path" %}
- {% include t.html key="asset3_name" %}

#### {% include t.html key="heading_required_clients" %}
- {% include t.html key="client1" %}
- {% include t.html key="client2" %}
- {% include tm.html key="client_settings" %}

### {% include t.html key="heading_branding" %}

{% include tm.html key="branding_theme" %}

{% include tm.html key="branding_logo" %}

### {% include t.html key="heading_setup_scripts" %}

{% include tm.html key="setup_scripts_cd" %}

{% include tm.html key="setup_scripts_clone" %}

{% include tm.html key="setup_scripts_app_setup" %}

{% include tm.html key="setup_scripts_build_clients" %}
- {% include tm.html key="setup_scripts_build_clients_note1" %}
- {% include t.html key="setup_scripts_build_clients_note2" %}

{% include tm.html key="setup_scripts_build_server" %}

{% include tm.html key="setup_scripts_build_viewer" %}

## {% include t.html key="heading_running_your_setup" %}

{% include tm.html key="running_run_script" %}
- {% include t.html key="running_one_instance" %}

{% include tm.html key="running_viewer_script" %}
- {% include tm.html key="running_viewer_graphite" %}
- {% include tm.html key="running_viewer_browsers" %}
- {% include tm.html key="running_viewer_see_also" %}

## {% include tc.html key="heading_footnotes" %}
{% include tcm.html key="footnote1" %}
