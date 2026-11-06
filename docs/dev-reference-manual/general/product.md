---
layout: default
nav_order: 2
title: Product
i18n_key: general_product
lang: en
permalink: /general/product/
parent: General
grand_parent: Dev Reference Manual
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

## {% include t.html key="heading_apps" %}

{% include tm.html key="apps_intro" %}

{% include tm.html key="apps_list" %}

## {% include t.html key="heading_layout" %}

{% include tm.html key="layout" %}

## {% include t.html key="heading_global" %}

{% include tm.html key="global_intro" %}

{% include tm.html key="global" %}

## {% include t.html key="heading_resources" %}

{% include tm.html key="resources" %}

```json
{
  "organizations": [
    { "name": "BurritoTruck", "url": "git.door43.org/burritotruck" },
    { "name": "unfoldingWord", "url": "git.door43.org/unfoldingword" }
  ]
}
```
