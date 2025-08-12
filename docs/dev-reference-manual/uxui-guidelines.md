---
layout: default
title: UX/UI guidelines
permalink: /uxui-guidelines/
parent: Dev Reference Manual
---
# UX/UI guidelines
{: .no_toc }

## Table of Contents
{: .no_toc .text-delta }

- TOC
{:toc}

## General page template

## Data grid

## Dialog

> 💡 Use the [Dialog](https://mui.com/material-ui/react-dialog/) component instead of a [modal](https://mui.com/material-ui/react-modal/). The modal is the low-level element meant to block the interaction. The Dialog is based on a modal, but specializes in providing information and further actions.

A Dialog is composed of three main parts:
* **Title**. Contain a brief, clear statement or question. It should communicate the Dialog's purpose.

    > Background color is `secondary`.

* **Content**. Anything needed for the context, from supporting text to full-size form. 

    > With long content, use the [`scroll=paper`](https://mui.com/material-ui/react-dialog/#scrolling-long-content).

* **Actions**. There's always a way to go back (*Cancel*). And the main action is on the right. The label should reflect the action performed when clicked.

    If any [required field](https://pankosmia.dev/uxui-guidelines/#{{ site.data.lexicon.required-fields_link }}) is in the content, the action button is disabled until they are completed.

    > *Cancel*. Text button, primary color.
    >
    > *Action*. Contained button, primary color.

![Example text field with guidance above](../../assets/images/dev-reference-manual/dialog-1.png)

Responsiveness is configured as follow:

    > TBD (full-width + variable maxWidth depending on breakpoints?).

## {{ site.data.lexicon.required-fields }}

When information is required to proceed:
* Required field(s) should show an asterisk `*` after the label.
* Above required field(s), explain what the asterisk does. This message is displayed once, after any title and before required field(s).

    > Add `* Required fields.`, with the typography style `subtitle2`.

* The action button below the field(s) is enabled only when all required fields are completed.

![Example text field with guidance above](../../assets/images/dev-reference-manual/required-fields-1.png)

## Tooltip
