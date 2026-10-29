---
layout: default
nav_order: 1
title: General
i18n_key: general
lang: en
permalink: /general/
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

{% include tm.html key="intro" %}
- [{{ site.data.i18n.pages.general_i18n.title[current_lang] }}]({{ url_prefix }}/general/i18n/): {% include tmp.html key="section_i18n" %}
- [{{ site.data.i18n.pages.general_product.title[current_lang] }}]({{ url_prefix }}/general/product/): {% include tmp.html key="section_product" %}
- [{{ site.data.i18n.pages.general_clients.title[current_lang] }}]({{ url_prefix }}/general/clients/): {% include tmp.html key="section_clients" %}
