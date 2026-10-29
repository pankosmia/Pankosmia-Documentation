---
layout: default
title: RCL Documentation
i18n_key: rcl_doc
lang: en
permalink: /rcl-doc/
parent: Dev Reference Manual
has_children: true
---
{%- include init_i18n.html -%}
{%- assign url_prefix = "" -%}
{%- if page.lang != site.lang -%}{%- assign url_prefix = "/" | append: page.lang -%}{%- endif -%}

# {% include t.html key="title" %}
{: .no_toc }

{% include t.html key="subtitle" %}
{: .fs-6 .fw-300 }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_overview" %}

{% include tm.html key="overview_intro" %}

{% include tm.html key="overview_components" %}
- {% include tmp.html key="overview_basic" %}
- {% include tmp.html key="overview_advanced" %}
- {% include tmp.html key="overview_actions" %}
- {% include tmp.html key="overview_menu" %}

{% include tm.html key="overview_import" %}

```js
import {
  PanBasicDialog,
  PanAdvancedDialog,
  PanDialogActionsArray,
  PanMenuWrapper,
} from "pankosmia-rcl";
```

## {% include t.html key="heading_sections" %}

{% include tm.html key="sections_intro" %}
- [{{ site.data.i18n.pages.rcl_dialog.title[current_lang] }}]({{ url_prefix }}/rcl-doc/dialog/): {% include tmp.html key="sections_dialog" %}
- [{{ site.data.i18n.pages.rcl_menu.title[current_lang] }}]({{ url_prefix }}/rcl-doc/menu/): {% include tmp.html key="sections_menu" %}

## {% include t.html key="heading_debug" %}

{% include tm.html key="debug_description" %}
