# Oscailte &mdash; A Jekyll theme [![Gem Version](https://img.shields.io/gem/v/oscailte?style=flat-square)](https://rubygems.org/gems/oscailte)

Oscailte ([IPA: [ˈɔsˠkɪlʲtʲɪ]](http://en.wiktionary.org/wiki/Appendix:Irish_pronunciation) Gaeilge for "Open") is a light and clean theme for use on [Jekyll](https://jekyllrb.org/) sites, released under the MIT Licence.

## Quicklinks
  - [Installation](#installation)
  - [Usage](#usage)
    - [Enabling Comments (via Disqus)](#enabling-comments-via-disqus)
    - [Social Networks](#social-networks)
    - [Enabling Google Analytics](#enabling-google-analytics)
    - [Enabling Excerpts on the Home Page](#enabling-excerpts-on-the-home-page)
  - [Customising Oscailte](#customising-oscailte)
    - [Site Colours](#site-colours)

## Installation

### Install as Remote Theme</strong></summary>

Using [Jekyll Remote Theme](https://github.com/benbalter/jekyll-remote-theme) (enabled
by default on Github Pages) is the quickest way to install Oscailte.

1. Add the following to your site's `_config.yml` to activate Oscailte

  ```yml
  remote_theme: coogie/oscailte
  ```

### Install via Gemfile</strong></summary>

1. Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "oscailte"
```

2. And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: oscailte
```

3. And then execute:

```sh
$ bundle
```

4. Or install it yourself as:

```sh
$ gem install oscailte
```

## Usage

The majority of Oscailte's settings are nested under the `oscailte` key.
Below are a list of all available ones, and their default values.

```yml
oscailte:
  posts_url:
  google_analytics:
  social:
    twitter: jekyllrb
    github: jekyll
    dribbble: jekyll
    facebook: jekyll
    flickr: jekyll
    instagram: jekyll
    linkedin: jekyll
    pinterest: jekyll
    telegram: jekyll
    keybase: jekyll
    rss: rss
  strings:
    skip_to_main_content: "Skip to main content"
    x_minute_read: "$x$ minute read"
    hero_title: "Welcome to Oscailte!<br> A powerful, clean, and responsive Jekyll theme."
    recent_posts: "Recent posts"
    view_all: "View all"
    read_full: "Read full"
    disqus_enable_javascript: 'Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus</a>.'
```

### Enabling Comments (via Disqus)

Optionally, if you have a Disqus account, you can tell Jekyll to use it to show a comments
section below each post.

To enable it, add the following lines to your Jekyll site:

```yml
disqus:
  shortname: my_disqus_shortname
```

You can find out more about Disqus' shortnames [here](https://help.disqus.com/installation/whats-a-shortname).

Comments are enabled by default and will only appear in production, i.e.,
`JEKYLL_ENV=production`

If you don't want to display comments for a particular post you can disable them by adding
`comments: false` to that post's YAML Front Matter.

:warning: `url`, e.g. `https://example.com`, must be set in you config file for Disqus to
work.

### Social Networks

You can add links to the accounts you have on other sites, with respective icon, by adding
one or more of the following options in your config. These usernames are nested under
`oscailte.social`, with the keys being simply the social network's name:

```yml
oscailte:
  social:
    twitter: jekyllrb
    github: jekyll
    dribbble: jekyll
    facebook: jekyll
    flickr: jekyll
    instagram: jekyll
    linkedin: jekyll
    pinterest: jekyll
    telegram: jekyll
    keybase: jekyll
    rss: rss
```

### Enabling Google Analytics

To enable Google Analytics, add the following lines to your `_config.yml`:

```yml
oscailte:
  google_analytics: UA-NNNNNNNN-N
```

Google Analytics will only appear in production, i.e., `JEKYLL_ENV=production`
Oscailte will also inform Google Analytics of your user's request for DNT.

### Enabling Excerpts on the Home Page

To display post-excerpts on the Home Page, simply add the following to your `_config.yml`:

```yaml
show_excerpts: true
```

## Customising Oscailte

### Site Colours

Oscailte makes extensive use of [CSS Custom Properties](https://developer.mozilla.org/en-US/docs/Web/CSS/--*)
for various parts of its look and feel. A full list of the properties used throughout can
be found in [`/_sass/_oscailte.scss`](./_sass/_oscailte.scss#L40). _Some_ of these
properties are generated via SCSS (such as typography), but are still Custom Properties
in-browser (not Sass variables).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/coogie/oscailte.
This project is intended to be a safe, welcoming space for collaboration, and contributors
are expected to adhere to the [Contributor Covenant](https://contributor-covenant.org)
code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
