---
layout: default
nav_order: 3
title: Scripts
i18n_key: scripts
lang: en
permalink: /scripts/
parent: Dev Quickstart
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{: .no_toc }

Developer scripts for an app repos built on Pankosmia
{: .fs-6 .fw-300 }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_use" %}

{% include tm.html key="use_intro" %}
- {% include t.html key="use_delete_working" %}
- {% include tm.html key="use_restart_server" %}
- {% include t.html key="use_one_instance" %}

### {% include t.html key="heading_client_development" %}
{% include tm.html key="client_dev_intro" %}

{% include tm.html key="client_dev_see_also" %}

{% include tm.html key="client_dev_release" %}

### {% include t.html key="heading_generate_artifacts" %}
{% include tm.html key="artifacts_intro" %}
- {% include t.html key="artifacts_main_branch" %}

{% include t.html key="artifacts_download" %}

{% include t.html key="artifacts_double_compressed" %}
- {% include tm.html key="artifacts_strip_tgz" %}
- {% include tm.html key="artifacts_strip_zip" %}
- {% include t.html key="artifacts_windows_warning" %}
- {% include tm.html key="artifacts_pkg_zip" %}

{% include t.html key="artifacts_upload_releases" %}

## {% include t.html key="heading_maintenance" %}

{% include tm.html key="maintenance_update_server" %}

{% include tm.html key="maintenance_sync" %}

## {% include tc.html key="heading_footnotes" %}
{% include tcm.html key="footnote1" %}
