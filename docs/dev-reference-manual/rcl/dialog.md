---
layout: default
nav_order: 1
title: Dialog
i18n_key: rcl_dialog
lang: en
permalink: /rcl-doc/dialog/
parent: RCL Documentation
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

## {% include t.html key="heading_basic" %}

{% include tm.html key="basic_intro" %}

{% include tm.html key="basic_behavior" %}

| {% include t.html key="th_prop" %} | {% include t.html key="th_type" %} | {% include t.html key="th_default" %} | {% include t.html key="th_description" %} |
|---|---|---|---|
| `titleLabel` | `string` | {% include t.html key="required" %} | {% include tmp.html key="prop_titleLabel" %} |
| `isOpen` | `boolean` | {% include t.html key="required" %} | {% include tmp.html key="prop_isOpen" %} |
| `closeFn` | `() => void` | {% include t.html key="required" %} | {% include tmp.html key="basic_closeFn" %} |
| `children` | `ReactNode` | {% include t.html key="none" %} | {% include tmp.html key="prop_children" %} |
| `actionsButtonArray` | `ReactElement[]` | {% include t.html key="none" %} | {% include tmp.html key="prop_actionsButtonArray" %} |
| `requiredFieldsLabel` | `boolean` | `false` | {% include tmp.html key="prop_requiredFieldsLabel" %} |
| `dividers` | `boolean` | `false` | {% include tmp.html key="basic_dividers" %} |

## {% include t.html key="heading_advanced" %}

{% include tm.html key="advanced_intro" %}

### {% include t.html key="advanced_behavior_heading" %}

{% include tm.html key="advanced_behavior" %}

| {% include t.html key="th_prop" %} | {% include t.html key="th_type" %} | {% include t.html key="th_default" %} | {% include t.html key="th_description" %} |
|---|---|---|---|
| `titleLabel` | `string` | {% include t.html key="required" %} | {% include tmp.html key="prop_titleLabel" %} |
| `isOpen` | `boolean` | {% include t.html key="required" %} | {% include tmp.html key="prop_isOpen" %} |
| `closeFn` | `() => void` | {% include t.html key="required" %} | {% include tmp.html key="advanced_closeFn" %} |
| `children` | `ReactNode` | {% include t.html key="none" %} | {% include tmp.html key="prop_children" %} |
| `actionsButtonArray` | `ReactElement[]` | {% include t.html key="none" %} | {% include tmp.html key="prop_actionsButtonArray" %} |
| `requiredFieldsLabel` | `boolean` | `false` | {% include tmp.html key="prop_requiredFieldsLabel" %} |

## {% include t.html key="heading_actions" %}

{% include tm.html key="actions_intro" %}

| {% include t.html key="th_prop" %} | {% include t.html key="th_type" %} | {% include t.html key="th_default" %} | {% include t.html key="th_description" %} |
|---|---|---|---|
| `actionFn` | `() => void` | {% include t.html key="required" %} | {% include tmp.html key="actions_actionFn" %} |
| `actionLabel` | `string` | {% include t.html key="required" %} | {% include tmp.html key="actions_actionLabel" %} |
| `closeFn` | `() => void` | {% include t.html key="required" %} | {% include tmp.html key="actions_closeFn" %} |
| `closeLabel` | `string` | {% include t.html key="required" %} | {% include tmp.html key="actions_closeLabel" %} |
| `isDisabled` | `boolean` | {% include t.html key="none" %} | {% include tmp.html key="actions_isDisabled" %} |
| `closeOnAction` | `boolean` | `true` | {% include tmp.html key="actions_closeOnAction" %} |
| `onlyCloseButton` | `boolean` | `false` | {% include tmp.html key="actions_onlyCloseButton" %} |
| `actionVariant` | `string` | {% include t.html key="none" %} | {% include tmp.html key="actions_actionVariant" %} |
| `closeVariant` | `string` | {% include t.html key="none" %} | {% include tmp.html key="actions_closeVariant" %} |
| `isLoading` | `boolean` | {% include t.html key="none" %} | {% include tmp.html key="actions_isLoading" %} |
| `loadingLabel` | `string` | {% include t.html key="none" %} | {% include tmp.html key="actions_loadingLabel" %} |

## {% include t.html key="heading_examples" %}

{% include tm.html key="example_dialog" %}

```jsx
const [open, setOpen] = useState(false);

<PanBasicDialog
  titleLabel="Delete this item?"
  isOpen={open}
  closeFn={() => setOpen(false)}
  actionsButtonArray={PanDialogActionsArray({
    actionLabel: "Delete",
    actionFn: () => deleteItem(),
    closeLabel: "Cancel",
    closeFn: () => setOpen(false),
    actionVariant: "contained",
  })}
>
  <Typography>This cannot be undone.</Typography>
</PanBasicDialog>
```

{% include tm.html key="example_demos" %}
