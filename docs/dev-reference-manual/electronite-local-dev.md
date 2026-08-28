---
layout: default
title: Electronite Local Development
i18n_key: electronite_local_development
lang: en
permalink: /electronite-local-development/
parent: Dev Reference Manual
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

## {% include t.html key="heading_platforms" %}

### {% include t.html key="heading_prerequisites" %}
{: .no_toc }

1. {% include tm.html key="prereq_environment" %}
2. {% include tm.html key="prereq_consider" %}

### {% include t.html key="heading_electronite_dev_viewer" %}

1. 💡 {% include t.html key="dev_viewer_create" %}
  - Linux: `cd linux/scripts` {% include t.html key="then" %} `./build_viewer.bsh`
  - Windows: `cd windows\\scripts` {% include t.html key="then" %} `.\build_viewer.ps1` ({% include tc.html key="use_powershell" %})
  - MacOS: `cd macos/scripts` {% include t.html key="then" %} `./build_viewer.zsh`

2. {% include tm.html key="dev_viewer_read" %}
  - 💡 {% include tmp.html key="dev_viewer_run_tip" %}
    - Linux: `cd linux/scripts` {% include t.html key="then" %} `./viewer.bsh` -- {% include t.html key="dev_tools" %} Ctrl + Shift + I"
    - Windows: `cd windows\scripts` {% include t.html key="then" %} `.\viewer.bat` -- {% include t.html key="dev_tools" %} Ctrl + Shift + I"
    - MacOS: `cd macos/scripts` {% include t.html key="then" %} `./viewer.zsh` -- {% include t.html key="dev_tools" %} Cmd + Option + I"

### {% include t.html key="heading_making_dev_changes" %}

{% include t.html key="dev_changes_intro" %}

{% include t.html key="dev_changes_browser_note" %}

💡 {% include tmp.html key="dev_changes_tip" %}
<pre>
└── buildResources
    └── electron
        ├── config
        │   └── paths.js
        ├── core
        │   ├── archiveUtil.js
        │   ├── downloadUtil.js
        │   ├── ports.js
        │   ├── server.js
        │   ├── startupErrors.js
        │   └── window.js
        ├── features
        │   ├── ffmpeg.js
        │   ├── firefox.js
        │   └── pdf.js
        ├── electronStartup.js
        ├── package.json
        └── preload.js
</pre>

### {% include t.html key="heading_deploying_dev_changes" %}

{% include tm.html key="deploy_test_dev_startup" %}

<pre>
└── [linux | windows | macos]
    └── viewer
        └── project
            └── payload
                └── app
                    └── electron
</pre>

{% include tm.html key="deploy_test_startup" %}

{: .important-title }
> {% include tmp.html key="install_important_title" %}
>
> {% include tmp.html key="install_important" %}

{% include tm.html key="deploy_favicon" %}

{% include t.html key="deploy_app_launcher_intro" %}

### {% include t.html key="heading_local_installer_build" %}
{: .no_toc }

{% include tm.html key="local_installer_consider" %}

#### {% include t.html key="heading_installer_prerequisites" %}
  - {% include tm.html key="installer_prereq_server" %}
  - {% include t.html key="installer_prereq_windows" %}
    - {% include tm.html key="installer_prereq_inno" %}

#### {% include t.html key="heading_bundle_viewer_script" %}

- Windows - `cd windows\scripts` {% include t.html key="then" %} `.\bundle_viewer.ps1`
  - {% include t.html key="bundle_viewer_windows_optional" %}
    - {% include tm.html key="bundle_viewer_windows_arg1" %}
  - {% include t.html key="bundle_viewer_windows_desc" %}


- MacOS - `cd /macos/scripts` {% include t.html key="then" %} `./bundle_viewer.zsh`
  - {% include t.html key="bundle_viewer_macos_optional" %}
    - {% include tm.html key="bundle_viewer_macos_arg1" %}
  - {% include t.html key="bundle_viewer_macos_desc" %}

- Linux - `cd /linux/scripts` {% include t.html key="then" %} `./bundle_viewer.bsh`
  - {% include t.html key="bundle_viewer_linux_before" %}
    - {% include t.html key="bundle_viewer_linux_step1" %}
    - {% include t.html key="bundle_viewer_linux_step2" %}
    - {% include t.html key="bundle_viewer_linux_step3" %}
    - {% include tm.html key="bundle_viewer_linux_step4" %}
    - {% include tm.html key="bundle_viewer_linux_step5" %}

#### {% include t.html key="heading_bundle_viewer_outputs" %}
- Windows: `releases\\windows\\intel64\\[app-name]-[version]-windows-[x64|arm64].exe`
- MacOS: `releases/macos/[intel64|arm64]/[app-name]-[version]-macos-[x64|arm64].pkg`
- Linux: `releases/linux/[app-name]-[version]-linux-[x64|arm64].deb`
