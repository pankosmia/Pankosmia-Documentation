---
layout: default
nav_order: 2
title: Menu
i18n_key: rcl_menu
lang: en
permalink: /rcl-doc/menu/
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

## {% include t.html key="heading_menu" %}

{% include tm.html key="menu_intro" %}
- {% include tmp.html key="menu_large" %}
- {% include tmp.html key="menu_small" %}

{% include tm.html key="menu_internal_note" %}

| {% include t.html key="th_prop" %} | {% include t.html key="th_type" %} | {% include t.html key="th_default" %} | {% include t.html key="th_description" %} |
|---|---|---|---|
| `isOpen` | `boolean` | {% include t.html key="required" %} | {% include tmp.html key="menu_isOpen" %} |
| `setIsOpen` | `(open: boolean) => void` | {% include t.html key="required" %} | {% include tmp.html key="menu_setIsOpen" %} |
| `anchorEl` | `HTMLElement` | {% include t.html key="none" %} | {% include tmp.html key="menu_anchorEl" %} |
| `children` | `ReactNode` | {% include t.html key="none" %} | {% include tmp.html key="menu_children" %} |

## {% include t.html key="heading_examples" %}

{% include tm.html key="example_menu" %}

```jsx
const [isOpen, setIsOpen] = useState(false);
const [anchorEl, setAnchorEl] = useState(null);

<Button
  onClick={(event) => {
    setAnchorEl(event.currentTarget);
    setIsOpen(true);
  }}
>
  Open Menu
</Button>
<PanMenuWrapper isOpen={isOpen} setIsOpen={setIsOpen} anchorEl={anchorEl}>
  <MenuItem onClick={() => setIsOpen(false)}>
    <ListItemText>Rename</ListItemText>
  </MenuItem>
  <Divider />
  <MenuItem onClick={() => setIsOpen(false)}>
    <ListItemText>Delete</ListItemText>
  </MenuItem>
</PanMenuWrapper>
```

{% include tm.html key="example_demos" %}
