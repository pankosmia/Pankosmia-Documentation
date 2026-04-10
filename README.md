# Pankosmia Documentation
- uses the https://just-the-docs.com/ for jekyll on ruby.
- Main is automatically built and deployed at https://pankosmia.dev/ .
- Previews of branches, pr's or other ref's are deployable at `https://pankosmia.dev/previews/[branch, tag, PR ref, or commit]` via github actions.

## To build and run locally:
1. Install Ruby+Devkit 3.3.6-1 from: https://rubyinstaller.org/downloads/ to match the current github workflow version. This includes Bundler version 2.5.22.
2. After installing, restart your terminal.
3. `bundle install`
4. Run `bundle exec jekyll serve`.  This builds files in the `_site/` directory and serves them at `http://localhost:4000`.

## i18n Front Matter
```
title: Home # required for Jekyll metadata and fallback
i18n_key: home
lang: en # must follow i18n_key; used on initial load, before a language has been selected
permalink: /match-subdir-or-file-name-without-extension/
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{% include t.html key="sample_i18n_key_without_markdown" %}

{% include tm.html key="sample_i18n_key_with_markdown" %}
```
Corresponding `_data/i18n.json` keys:

- The "nav_title" key is for an optional shortened version of the title. When it does not exist then the key "title" will be used for navigation. The key "title" is is also used in breadcrumbs.
- The key "home" must match `i18n_key: home` in the front matter.
```
{
  "pages": {
    "home": {
      "title": {
        "en": "Home Page",
        "fr": "Page d'accueil",
        "es": "Página de inicio"
      },
      "nav_title": {
        "en": "Home",
        "fr": "Accueil",
        "es": "Inicio"
      },
      "sample_i18n_key_without_markdown": {
        "en": "Sample i18n Text"
      },
      "sample_i18n_key_with_markdown": {
        "en": "Sample text with a [link](https://pankosmia.dev/)."
      }
    }
  }
}
```

## Terms common to multiple pages

For terms that appear on multiple pages, there is a "common" namespace in i18n.json from which keys can be pulled in with `{% include tc.html key="heading_toc" %}` or with `{% include tcm.html key="with_markdown" %}`.

```
{
  "common": {
    "heading_toc": {
      "en": "Table of Contents",
      "fr": "Table des matières",
      "es": "Tabla de contenidos"
    }
  }
}
```

## Adding a new language:

1. Add to the languages list in `_config.yml`:
```
languages:
  - en
  - fr
  - es
```

2. Add to the language_names key in `_data/i18n.json`:
```
  "language_name": {
    "en": "English",
    "fr": "Français",
    "es": "Español"
  },
```

### Default language / i18n Fallback language

This is set to English in:

_config.yml: 
```
# Set the default language
lang: en
```

_includes\components\aux_nav.html:
```
{%- assign current_lang = page.lang | default: site.lang | default: "en" -%}
```

_includes\components\nav\pages.html:
```
{%- assign current_lang = page.lang | default: site.lang | default: "en" -%}
```

and in markdown front matter:
```
lang: en # used on initial load, before a language has been selected
---
```

### Customizations to just-the-docs

The following is for reference on future ruby / jekyll / just-the-docs upgrades, just in case. 

#### New files added
- _plugins\lang_pages.rb: A custom plugin to create permalinks and pages from i18n for each language on build in language code subdirectories.
- _data\i18n.json
- _includes\search_placeholder_custom.html (1 line)
- _includes\toc_heading_custom.html (1 line)
- _includes\init_i18n.html: for shorter md file i18n config with `{%- include init_i18n.html -%}`
- _includes\t.html: for shorter i18n key reference in md with `{% include t.html key="sample_i18n_key" %}`
- _includes\debug-info.html: Unrelated to i18n, rather used to show  current version info at https://pankosmia.dev/versions/

### Files copied over from just-the-docs repo, then edited for i18n
Differences cited below vs. [just-the-docs repo](https://github.com/just-the-docs/just-the-docs/) are current as of [just-the-docs commits on Mar 31, 2026](https://github.com/just-the-docs/just-the-docs/tree/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1).

Run a diff between "customized file" and "before edits" to see customizations. Run a diff between "before edits" and "latest before edits" to see if just-the-docs has made any changes.

| Customized File | just-the-docs before edits | latest just-the-docs version |
|---|---|---|
| `_includes\components\aux_nav.html`: | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/aux_nav.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/aux_nav.html) |
| `_includes\components\sidebar.html`: | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/sidebar.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/sidebar.html) |
| `_includes\components\footer.html`: | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/footer.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/footer.html) |
| `_includes\components\site_nav.html`: | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/site_nav.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/site_nav.html) |
| `_includes\components\children_nav.html`: | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/children_nav.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/children_nav.html) |
| `_includes\components\nav\children.html`: | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/nav/children.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/nav/children.html) |
| `_includes\components\nav\links.html`: | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/nav/links.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/nav/links.html) |
| `_includes\components\nav\pages.html` | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_includes/components/nav/pages.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_includes/components/nav/pages.html) |
| `_layouts\default.html` | [before edits](https://github.com/just-the-docs/just-the-docs/blob/9e56fa5d7ba8fa6a6d8aea7c38cb2174869d97d1/_layouts/default.html) | [latest before edits](https://github.com/just-the-docs/just-the-docs/blob/main/_layouts/default.html) |