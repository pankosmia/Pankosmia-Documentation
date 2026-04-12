---
layout: default
nav_order: 1
title: Environment Requirements
i18n_key: environment_requirements
lang: en
permalink: /environment-requirements/
parent: Dev Quickstart
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{: .no_toc }

Local dev environment requirements for AppDev of a Desktop App repo built on Pankosmia
{: .fs-6 .fw-300 }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_tested_on" %}

### Ubuntu 24.04 {% include t.html key="with" %}
- npm 10.7.0
- node 20.18.1
- rustc 1.88.0 -- `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs {% raw %}|{% endraw %} sh`

### Windows 11 {% include t.html key="with" %}
- git 2.44.0; {% include t.html key="see" %} [https://git-scm.com/install/windows](https://git-scm.com/install/windows)
- npm 10.7.0
- node 20.18.1
- rustc 1.88.0 -- {% include t.html key="see" %} [https://www.rust-lang.org/tools/install](https://www.rust-lang.org/tools/install)
- cmake 3.31.0 -- {% include tmp.html key="windows_cmake_ver" %} {% include t.html key="see" %} [https://cmake.org/download/](https://cmake.org/download/)
- {% include t.html key="windows_powershell" %}
- {% include tmp.html key="windows_inno_setup" %}

### MacOS {% include t.html key="with" %}
- npm 10.7.0 ({% include t.html key="tested_on" %} Monterey)
- npm 10.8.2 ({% include t.html key="tested_on" %} Sequoia)
- node 20.18.1
- rustc 1.88.0 -- `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs {% raw %}|{% endraw %} sh`
- OpenSSL 3.5.0 -- `brew install openssl`

