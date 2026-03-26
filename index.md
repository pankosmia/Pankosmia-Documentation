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

DEBUG: current_lang={{ current_lang }}, i18n_key={{ page.i18n_key }}, p={{ p }}

# {% include t.html key="heading_main" %}

{% capture temp %}{% include t.html key="subheading_main" %}{% endcapture %}{{ temp | markdownify }}
{: .fs-6 .fw-300 }

{% include t.html key="intro" %}


## Contents

* ### [{% include t.html key=".the_pankosmia_project" %}](pankosmia-project/)

* ### [{% include t.html key=".dev_quickstart" %}](dev-quickstart/)

* ### [{% include t.html key=".dev_reference_manual" %}](dev-reference-manual/)

---
[{% include t.html key=".legal_notices" %}](legal-notices/)
