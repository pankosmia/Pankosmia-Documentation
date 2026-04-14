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

### {% include t.html key="heading_configuration" %}
{% include tm.html key="configuration_intro" %}

| Linux | Windows | MacOS |
|-------|---------|-------|
| buildSpec.json<br />/globalBuildResources/i18nPatch.json<br />/globalBuildResources/product.json<br />/linux/buildResources/setup/app_setup.json | buildSpec.json<br />\\globalBuildResources\\i18nPatch.json<br />\\globalBuildResources\\product.json<br />\\windows\\buildResources\\setup\\app_setup.json | buildSpec.json<br />/globalBuildResources/i18nPatch.json<br />/globalBuildResources/product.json<br />/macos/buildResources/setup/app_setup.json |

{% include tm.html key="configuration_review" %}

#### {% include t.html key="heading_config_scripts" %}
{% include t.html key="config_scripts_run_from" %}

| {% include t.html key="table_header_description" %} | Linux:<br />*cd linux/scripts* | Windows:<sup>[[1]](#f1)</sup><br />*cd windows\scripts* | MacOS:<br />*cd macos/scripts* |
|-------------|-------|---------|-------|
| {% include t.html key="config_script_desc" %} | `./app_setup.bsh` | `.\app_setup.bat` | `./app_setup.zsh` |

#### {% include t.html key="heading_setup_scripts" %}
{% include t.html key="setup_scripts_run_from" %}

| {% include t.html key="table_header_description" %} | Linux:<br />*cd linux/scripts* | Windows:<sup>[[1]](#f1)</sup><br />*cd windows\scripts* | MacOS:<br />*cd macos/scripts* |
|-------|-------|---------|-------|
| {% include tmp.html key="clone_desc" %} | {% include tmp.html key="clone_linux" %} | {% include tmp.html key="clone_windows" %} | {% include tmp.html key="clone_macos" %} |
| {% include tmp.html key="build_clients_desc" %} | {% include tmp.html key="build_clients_linux" %} | {% include tmp.html key="build_clients_windows" %} | {% include tmp.html key="build_clients_macos" %} |
| {% include t.html key="build_viewer_desc" %} | `./build_viewer.bsh` | `.\build_viewer.ps1`<br />({% include tc.html key="use_powershell" %}) | `./build_viewer.zsh` |

#### {% include t.html key="heading_usage_scripts" %}
{% include tm.html key="usage_scripts_note" %}

| {% include t.html key="table_header_description" %} | Linux:<br />*cd linux/scripts* | Windows:<sup>[[1]](#f1)</sup><br />*cd windows\scripts* | MacOS:<br />*cd macos/scripts* |
|-------|-------|---------|-------|
| {% include tmp.html key="clean_desc" %} | {% include tmp.html key="clean_linux" %} | {% include tmp.html key="clean_windows" %} | {% include tmp.html key="clean_macos" %} |
| {% include tmp.html key="build_server_desc" %} | {% include tmp.html key="build_server_linux" %} | {% include tmp.html key="build_server_windows" %} | {% include tmp.html key="build_server_macos" %} |
| {% include tmp.html key="run_desc" %} | {% include tmp.html key="run_linux" %} | {% include tmp.html key="run_windows" %} | {% include tmp.html key="run_macos" %} |
| {% include tmp.html key="viewer_desc" %} | {% include tmp.html key="viewer_linux" %} | {% include tmp.html key="viewer_windows" %} | {% include tmp.html key="viewer_macos" %} |
| {% include tmp.html key="bundle_viewer_desc" %} | {% include tmp.html key="bundle_viewer_script_linux" %} | {% include tmp.html key="bundle_viewer_script_windows" %} | {% include tmp.html key="bundle_viewer_script_macos" %} |
| {% include tmp.html key="bundle_zip_desc" %} | {% include tmp.html key="bundle_zip_linux" %} | {% include tmp.html key="bundle_zip_windows" %} | {% include tmp.html key="bundle_zip_macos" %} |
| {% include tmp.html key="bundle_exe_desc" %} | | {% include tmp.html key="bundle_exe_windows" %} | |

#### {% include t.html key="heading_maintenance_scripts" %}
{% include t.html key="maintenance_scripts_run_from" %}

| {% include t.html key="table_header_description" %} | Linux:<br />*cd linux/scripts* | Windows:<sup>[[1]](#f1)</sup><br />*cd windows\scripts* | MacOS:<br />*cd macos/scripts* |
|-------|-------|---------|-------|
| {% include t.html key="sync_desc" %} | {% include tmp.html key="sync_linux" %} | {% include tmp.html key="sync_windows" %} | {% include tmp.html key="sync_macos" %} |

## {% include tc.html key="heading_footnotes" %}
{% include tm.html key="footnote1" %}

{% include tm.html key="footnote2" %}

{% include tm.html key="footnote3" %}

{% include tm.html key="footnote4" %}
