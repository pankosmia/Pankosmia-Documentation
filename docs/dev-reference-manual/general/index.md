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

# {% include t.html key="title" %}
{: .no_toc }

{% include t.html key="subtitle" %}
{: .fs-6 .fw-300 }

{% include tm.html key="intro" %}
- [{ site.data.i18n.pages.general_i18n.title[current_lang] }]({% include localized_relative_url.html path="/general/i18n/" %}): {% include tmp.html key="section_i18n" %}
- [{ site.data.i18n.pages.general_product.title[current_lang] }]({% include localized_relative_url.html path="/general/product/" %}): {% include tmp.html key="section_product" %}
- [{ site.data.i18n.pages.general_clients.title[current_lang] }]({% include localized_relative_url.html path="/general/clients/" %}): {% include tmp.html key="section_clients" %}
