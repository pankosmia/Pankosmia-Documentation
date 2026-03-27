---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
# Previously:
# Pankosmia is a Scripture translation software toolkit.
# {{ site.data.lexicon.app-name }} is the translation software made by [{{ site.data.lexicon.company-name }}]({{ site.data.lexicon.company-website }}) from Pankosmia.
# This documentation presents {{ site.data.lexicon.app-name }} as an example of how Pankosmia works and what it can do.
layout: default
nav_order: 1
title: Home # used for Jekyll metadata and fallback
i18n_key: home
lang: en
---

{%- assign current_lang = page.lang | default: site.lang | default: "en" -%}
{%- assign p = site.data.i18n.pages[page.i18n_key] -%}

# {% include t.html key="heading_main" %}

{% capture temp %}{% include t.html key="subheading_main" %}{% endcapture %}{{ temp | markdownify }}
{: .fs-6 .fw-300 }

{% include t.html key="intro" %}


## Contents

* <h3><a href="pankosmia-project/">{% include t.html key="the_pankosmia_project" %}</a></h3>

* <h3><a href="dev-quickstart/">{% include t.html key="dev_quickstart" %}</a></h3>

* <h3><a href="dev-reference-manual/">{% include t.html key="dev_reference_manual" %}</a></h3>

---
[{% include t.html key="legal_notices" %}](legal-notices/)
