---
layout: default
nav_order: 3
title: Clients
i18n_key: general_clients
lang: en
permalink: /general/clients/
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

## {% include t.html key="heading_what" %}

{% include tm.html key="what" %}

## {% include t.html key="heading_structure" %}

{% include tm.html key="structure" %}

## {% include t.html key="heading_metadata" %}

{% include tm.html key="metadata_intro" %}

{% include tm.html key="metadata" %}

### {% include t.html key="heading_examples" %}

{% include tm.html key="examples_intro" %}

```json
{
  "id": "core-settings",
  "require": { "net": false },
  "minServerVersion": "0.20.3",
  "exclude_from_menu": true,
  "exclude_from_dashboard": true,
  "i18n": {
    "title": { "en": "Settings", "fr": "Paramètres" }
  }
}
```

{% include tm.html key="examples_handler" %}

```json
{
  "id": "contenthandler-template",
  "require": { "net": false, "debug": true },
  "i18n": {
    "title": { "en": "contenthandler-template" }
  }
}
```

## {% include t.html key="heading_endpoints" %}

{% include tm.html key="endpoints_intro" %}

{% include tm.html key="endpoints_fields" %}

{% include tm.html key="endpoints_actions_intro" %}

{% include tm.html key="endpoints_actions" %}

```json
{
  "id": "core-contenthandler_obs",
  "endpoints": {
    "textStories": {
      "create_document": [
        {
          "doc": "Create a document for OBS",
          "label": "pages:core-contenthandler_obs:create_content_obs",
          "url": "/createDocument/obsContent"
        }
      ],
      "edit": {
        "doc": "main page for workspace",
        "label": "pages:core-client-workspace:main",
        "url": "core-local-workspace#"
      }
    }
  }
}
```
