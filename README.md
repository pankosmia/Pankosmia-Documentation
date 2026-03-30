# Pankosmia Documentation
- uses the https://just-the-docs.com/ for jekyll on ruby.
- Main is automatically built and deployed at https://pankosmia.dev/ .
- Previews of branches, pr's or other ref's are deployable at `https://pankosmia.dev/previews/[branch, tag, PR ref, or commit]` via github actions.

## To build and run locally:
1. Install Ruby+Devkit 3.3.6-1 from: https://rubyinstaller.org/downloads/ to match the current github workflow version.
2. After installing, restart your terminal.
3. Run `gem install bundler`
4. Run `bundle exec jekyll serve`.  This builds files in the `_site/` directory and serves them at `http://localhost:4000`.

## i18n Front Matter
```
title: Home # required for Jekyll metadata and fallback
i18n_key: home
lang: en # used on initial load, before a language has been selected
---
{%- include init_i18n.html -%}

# {% include t.html key="title" %}
{% include t.html key="sample_i18n_text" %}
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
      "sample_i18n_text": {
        "en": "Sample i18n Text"
      }
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