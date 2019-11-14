---
layout: page
title: Install
permalink: /install/
---

Oscailte can be installed either as a remote theme, or directly into your
Jekyll site via Gemfile. Which way you choose depends entirely on how you build
and host your site.

## Install as Remote Theme

If you build and host your Jekyll site using [Github Pages][0], installing
Oscailte as a remote theme is probably the quickest and easiest way (since
Jekyll Remote Theme is enabled by default on Github Pages).

Add the following to your site's `_config.yml` to activate Oscailte

```yml
remote_theme: coogie/oscailte
```

---

Alternatively, if you build your Jekyll site via CI pipeline (or manually), you
can install Oscailte into your site via Gemfile.

## Install via Gemfile

1. Add this line to your Jekyll site's Gemfile:
```rb
gem "oscailte"
```

2. And add this line to your Jekyll site's `_config.yml`:
```yml
theme: oscailte
```

3. And then execute:
```sh
bundle
```

4. Or install it yourself as:
```sh
gem install oscailte
```

[0]: https://help.github.com/en/github/working-with-github-pages/adding-a-theme-to-your-github-pages-site-using-jekyll