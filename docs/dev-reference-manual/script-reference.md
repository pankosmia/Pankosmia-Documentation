---
layout: default
title: Script Reference
i18n_key: script_reference
lang: en
permalink: /script-reference/
parent: Dev Reference Manual
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{: .no_toc }

{% include t.html key="additional_info" %}
{: .fs-6 .fw-300 }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_ecosystem_setup" %}
{% include tm.html key="ecosystem_setup_intro" %}

{% include tm.html key="ecosystem_setup_example" %}

<pre>
|-- repos
    |-- pankosmia
        |-- core-client-content repository
        |-- core-client-dashboard repository
        |-- core-client-i18n-editor repository
        |-- core-client-remote-repos repository
        |-- core-client-settings repository
        |-- core-client-workspace repository
        |-- [your-desktop-app-repo-name] <b><em>(30 characters or less on windows!)</em></b>
        |-- resource-core
        |-- webfonts-core
</pre>

## {% include t.html key="heading_installing_clients" %}
{% include tm.html key="installing_clients_intro" %}

{% include tm.html key="installing_clients_script" %}
```
# {% include t.html key="run_where" %}
npm ci
npm run build
```
{% include tm.html key="installing_clients_run_note" %}

## {% include t.html key="heading_scripts" %}

{% include tm.html key="scripts_legend" %}

### {% include t.html key="heading_configuration" %}
{% include tm.html key="configuration_intro" %}

{% include tm.html key="configuration_files_list" %}

{% include tm.html key="configuration_review" %}

#### {% include t.html key="heading_config_scripts" %}
{% include t.html key="config_scripts_run_from" %}

| {% include t.html key="table_header_description" %} | {% include tmp.html key="table_header_script_arg" %} |
|---|---|
| {% include t.html key="config_script_desc" %} | `app_setup` |

#### {% include t.html key="heading_setup_scripts" %}
{% include t.html key="setup_scripts_run_from" %}

| {% include t.html key="table_header_description" %} | {% include tmp.html key="table_header_script_arg" %} |
|---|---|
| {% include t.html key="clone_desc" %} | {% include tmp.html key="clone_script" %} |
| {% include tmp.html key="build_clients_desc" %} | {% include tmp.html key="build_clients_script" %} |
| {% include t.html key="build_viewer_desc" %} | {% include tmp.html key="build_viewer_script" %} |

#### {% include t.html key="heading_usage_scripts" %}
{% include tm.html key="usage_scripts_note" %}

| {% include t.html key="table_header_description" %} | {% include tmp.html key="table_header_script_arg" %} |
|---|---|
| {% include tmp.html key="clean_desc" %} | {% include tmp.html key="clean_script" %} |
| {% include tmp.html key="build_server_desc" %} | {% include tmp.html key="build_server_script" %} |
| {% include tmp.html key="run_desc" %} | {% include tmp.html key="run_script" %} |
| {% include tmp.html key="viewer_desc" %} | {% include tmp.html key="viewer_script" %} |
| {% include tmp.html key="bundle_viewer_desc" %} | {% include tmp.html key="bundle_viewer_script" %} |
| {% include tmp.html key="bundle_zip_desc" %} | {% include tmp.html key="bundle_zip_script" %} |

#### {% include t.html key="heading_maintenance_scripts" %}
{% include t.html key="maintenance_scripts_run_from" %}

| {% include t.html key="table_header_description" %} | {% include tmp.html key="table_header_script_arg" %} |
|---|---|
| {% include t.html key="sync_desc" %} | {% include tmp.html key="sync_script" %} |

## {% include tc.html key="heading_footnotes" %}
[<b id="f1">1</b>] ... {% include tmp.html key="footnote1" %}

[<b id="f2">2</b>] ... {% include tmp.html key="footnote2" %}

[<b id="f3">3</b>] ... {% include tmp.html key="footnote3" %}

[<b id="f4">4</b>] ... {% include tmp.html key="footnote4" %}
