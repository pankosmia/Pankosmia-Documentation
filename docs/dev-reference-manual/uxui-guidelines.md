---
layout: default
title: UX/UI guidelines
i18n_key: ux_ui_guidelines
lang: en
permalink: /uxui-guidelines/
parent: Dev Reference Manual
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{: .no_toc }

## {% include tc.html key="heading_toc" %}
{: .no_toc .text-delta }

- TOC
{:toc}

## {% include t.html key="heading_general_page_template" %}

## {% include t.html key="heading_data_grid" %}

## {% include t.html key="heading_dialog" %}

> 💡 {% include tmp.html key="dialog_tip" %}

{% include t.html key="dialog_composed" %}
* {% include t.html key="dialog_title" %}

    > {% include tm.html key="dialog_title_note" %}

* {% include t.html key="dialog_content" %}

    > {% include tm.html key="dialog_content_note" %}

* {% include t.html key="dialog_actions" %}

    {% include tm.html key="dialog_actions_required" %}

    > {% include t.html key="dialog_actions_cancel" %}
    >
    > {% include t.html key="dialog_actions_action" %}

![Example text field with guidance above](../../assets/images/dev-reference-manual/dialog-1.png)

{% include t.html key="dialog_responsiveness" %}

    > 🚧 {% include t.html key="dialog_responsiveness_tbd" %}

## {% include t.html key="heading_icons" %}

{% include tm.html key="icons_intro" %}

## {% include t.html key="heading_required_fields" %}

{% include t.html key="required_fields_intro" %}
* {% include tm.html key="required_fields_asterisk" %}
* {% include t.html key="required_fields_explain" %}

    > {% include tm.html key="required_fields_explain_note" %}

* {% include t.html key="required_fields_action_button" %}

![Example text field with guidance above](../../assets/images/dev-reference-manual/required-fields-1.png)

## {% include t.html key="heading_theme" %}

### {% include t.html key="heading_main_colors" %}
{: .no_toc }

- {% include tm.html key="main_colors_intro" %}

### {% include tmp.html key="heading_generate_mui_variants" %}
{: .no_toc }

- {% include tm.html key="generate_mui_variants_intro" %}

    > {% include t.html key="generate_mui_variants_note" %}

### {% include t.html key="heading_check_contrast" %}
{: .no_toc }

- {% include tm.html key="check_contrast_intro" %}
- {% include t.html key="check_contrast_contexts" %}

    > {% include t.html key="check_contrast_contexts_note" %}

- {% include t.html key="check_contrast_primary_secondary" %}

### {% include tmp.html key="heading_generate_appbar_chip" %}
{: .no_toc }

- {% include tm.html key="appbar_chip_darker" %}
- {% include tm.html key="appbar_chip_lighter" %}

## {% include t.html key="heading_tooltip" %}
