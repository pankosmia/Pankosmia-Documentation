---
layout: default
title: Decluttering Client Repos
i18n_key: decluttering
lang: en
permalink: /decluttering/
parent: Dev Reference Manual
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{: .no_toc }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_knip" %}

{% include t.html key="knip" %}

{: .important-title }
> {% include tmp.html key="knip_important_title" %}
>
> {% include tmp.html key="knip_important" %}

{: .warning-title }
> {% include tmp.html key="knip_warning_title" %}
>
> {% include tmp.html key="knip_warning" %}

### {% include t.html key="heading_knip_setup" %}
{% include tmp.html key="knip_setup" %}

### {% include t.html key="heading_knip_analyze" %}
{% include t.html key="knip_analyze" %}

### {% include t.html key="heading_knip_false_unused_export" %}
{% include tmp.html key="knip_false_unused_export" %}

### {% include t.html key="heading_knip_false_duplicate_export" %}
{% include tmp.html key="knip_false_duplicate_export" %}

### {% include t.html key="heading_knip_false_unused_dependency" %}
{% include tmp.html key="knip_false_unused_dependency" %}

## {% include t.html key="heading_applying_changes" %}

{: .highlight-title }
> {% include tcmp.html key="pnpm_migration_title" %}
>
> {% include tcmp.html key="pnpm_migration" %}

| | `pnpm-lock.yaml`| `package-lock.json` |
|---|---|---|
| {% include tmp.html key="applying_changes_1" %} | `pnpm install` {% include tmp.html key="or_manual" %} | {% include tmp.html key="applying_changes_1.1" %} |
| {% include tmp.html key="applying_changes_2" %} | `pnpm i <package_name>@0.1.29 --save-exact` {% include tmp.html key="or_manual" %} | `npm i <package_name>@0.1.29 --save-exact` |
| {% include tmp.html key="applying_changes_3" %} | `pnpm uninstall <package_name>` {% include tmp.html key="or_manual" %} | `npm uninstall <package_name>` |
| {% include tmp.html key="applying_changes_4" %} | {% include tmp.html key="applying_changes_4.1" %} {% include tmp.html key="or_manual" %} | {% include tmp.html key="applying_changes_4.2" %} |



