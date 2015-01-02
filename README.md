# Oscailte &mdash; An Octopress theme

---
## ![Attention](http://i.imgur.com/iBbFfJH.png) Latest version: 2.0 <sup>(2015-01-02)</sup>

---

Oscailte ([IPA: [ˈɔsˠkɪlʲtʲɪ]](http://en.wiktionary.org/wiki/Appendix:Irish_pronunciation) Gaeilge for "Open") is a light and clean theme for use on [Octopress](http://octopress.org/) sites, released under the MIT Licence.

![Oscailte Preview](http://i.imgur.com/QxKWaIg.png)

## Quicklinks
  - [Installation](#installation)
  - [Features](#features)
    - [Homepage](#homepage)
    - [Gravatar](#gravatar)
    - [Social Sidebar](#social-sidebar)
    - [Facebook Open Graph](#facebook-open-graph-preview)
    - [Twitter Timeline Aside](#twitter-timeline-aside-preview)
    - [(Un)Available For Hire](#unavailable-for-hire)
  - [Customising Oscailte](#customising-oscailte)
    - [Site Colours](#site-colours)
    - [Default Dummy Text](#default-dummy-text)
    - [Default Icons on Homepage](#default-icons-on-homepage)
    - [Using the Blog as the Homepage](#using-the-blog-as-the-homepage)
    - [Modifying the Image and Related Text on Homepage](#modifying-the-image-and-related-text-on-homepage)

## Installation

**Attention!**
With the recent updates to Octopress to support Jekyll 2, if you are using the latest version of Octopress 2 (after June 21st, 2014), the `paginate_path` setting needs to be updated in your `_config.yml` file:

    paginate_path: "blog/:num"

You can install Oscailte like so:

    $ cd your_octopress_directory
    $ git clone -b master https://github.com/coogie/oscailte.git .themes/oscailte
    $ rake install['oscailte']
    $ rake generate

Having problems when installing with zsh? Try `rake install\['oscailte'\]` instead.

Next, update your _config.yml with the following:

    # Oscailte Theme Settings
    oscailte:
        hire: # The "Available for Hire" widget
            visible:
                footer: false
                sidebar: true
            footer-cols: 6 # Number of columns available for the footer component, max 12
            available: true # Whether or not you're available for hire
            vibrant: false # Makes the widget much more noticeable
            message: "Available for new opportunities"
        social:
            visible: true
            title: # Defaults to "Follow me!" if not present
            adn: # App.net
            coinbase:
            dribbble:
            facebook:
                user:
                app_id: # For enabling Open Graph metadata
            github:
                user:
                show_profile_link:
            googleplus:
            hackernews:
            keybase:
            linkedin:
            pinterest:
            reddit:
            stackoverflow:
            twitter:
                user:
                widget: # Shows the Recent Tweets widget in sidebar
                    is_shown:
                    show_profile_link:
                    widget_id:
            youtube:

## Features

### Homepage

Oscailte includes a clean page, separated from the blogging capabilities of Octopress.
The theme can be modified to instead use just the [blog index as the homepage](#using-the-blog-as-the-homepage).

### Excerpts

While excerpts are not necessarily a theme feature, Oscailte contains styling to support them.
In order to use excerpts on your site simply insert `<!-- more -->` somewhere inside your post content to trigger the break.

![Excerpt Preview](http://i.imgur.com/Hlk0Nqh.png)

### Gravatar

Oscailte makes use of the `site.email` used in `_config.yml` (if present) to grab and display your Gravatar if you use one.
Otherwise, the theme will instead display the default Gravatar logo, which can be changed by replacing the file locally.

If you make use of the Gravatar feature, please ensure you use an email address that you do not mind being publicly crawlable by bots/spiders.

### Social Sidebar

Oscailte allows you to display links to your other online profiles in a quick and easy fashion. The links for each of these are handled within `site.oscailte.social` in your `_config.yml`.
Please note that these are only required if you wish to display items such as Social Sidebar, Github Repos, Twitter Timeline, and [Facebook OpenGraph Metadata](#facebook-open-graph-preview).

Oscailte supports the above social sites out of the box, but more may be (infinitely) added as the user sees fit.

The colours for these are defined in `_variables.scss` as a key-value pair, with the key being used to create the class name. If you *do* add your own in and would like to colour it accordingly, you can create an entry in your own `_variables.scss` file. You can see the SCSS at work on [L#65 of `_social.scss`](https://github.com/coogie/oscailte/blob/master/sass/oscailte/aside/_social.scss#L65)

```` scss
...
$sites:
    adn           #4A484C,
    coinbase      #3380D0,
    dribbble      #EA4C89,
    facebook      #3B5998,
    github        #333333,
    googleplus    #db4a39,
    hackernews    #FF6600,
    keybase       #FF8648,
    linkedin      #4875b4,
    pinterest     #CC2127,
    reddit        #5F99CF,
    stackoverflow #FE7A15,
    twitter       #00a0d1,
    youtube       #CC181E;
````

### Facebook Open Graph ([Preview](http://i.imgur.com/iLDBoFV.png))

Oscailte supports the use of Facebook Open Graph metadata to give that little *umph* when somebody shares a link to your site on somebody's Facebook timeline/wall.
To enable this, you must first add the following to your `_config.yml` file:

``` yml
...
oscailte:
    social:
        facebook:
            app_id: xxxxxxxxxx
```

If you don't know how to get an App ID, you can pick one up by going to the [Insights Dashboard](https://www.facebook.com/insights/) and clicking the green button in the top-right that reads "Insights for your website". The App ID can be found in the modal that appears on the page.
**Make sure you add the App ID to your Octopress site, compile, and push to your hosting before proceeding with the modal on Facebook.**

Some optional, yet useful options are also available to use on a per-page/post basis

``` yml
---
layout: post
title: "Example Post Title"
date: 2014-02-18 11:35:55 +0000
comments: true
categories: [category 1, category 2]

# Provide an image thumbnail for Facebook OpenGraph
facebook:
    image: http://yoursite.com/image.jpg
    type: article
---
```

 - **og:title** will try to use the `post.title`, falling back to `page.title`, and then finally `site.title`
 - **og:site_name** uses the value of `site.title`
 - **og:url** will use the canonical link for the page, falling back to `site.url`
 - **og:description** will attempt to use the `description` from the post/page's own YML file, falling back to use `content | raw_content` if it doesn't exist.
 - If `site.oscailte.social.facebook.user` has been set, **og:author** will associate the post/page with that user.
 - If `[page|post].facebook.image` has been set in the post/page's own YML file, **og:image** will use its value as an image for that particular page/post

Big thanks to [@zclancy](https://github.com/zclancy)'s post, "[Twitter Cards, Facebook Open Graph, and Octopress](http://blackglasses.me/2013/09/19/twitter-cards-facebook-open-graph-and-octopress/)" from which I ~~stole~~ referenced the code! ;)

### Twitter Timeline Aside ([Preview](http://i.imgur.com/ofdupZj.png))

Since the release of v1.1 of the Twitter API, Twitter removed support for unauthenticated API calls.
Twitter does, however, offer a widget that integrates well with blogging platforms - including Octopress.

To get started, head over to Twitter's [Widgets Configurator](https://twitter.com/settings/widgets/new) page and create a new Widget. Next, copy the code and look for `data-widget-id="xxxxxxxxxxxx"`.
Copy this widget ID and then update the `social` settings for Oscailte.

```yml
...
oscailte:
    social:
        twitter:
            user: username
            widget:
                is_shown: true
                show_profile_link: true
                widget_id: xxxxxxxxxxxx
```

Next, modify your `default_asides` within your `_config.yml` to include the Twitter Aside and you're good to go!

```
default_asides: [..., asides/twitter.html, ...]
```


### (Un)Available For Hire

This feature displays a message within the footer or the sidebar, or both!
It can be used to bring attention to your availability for taking on new projects.
The settings for it should be placed within your `_config.yml`

```yml
oscailte:
    hire:
        visible:
            footer: false
            sidebar: true
        footer-cols: 6   # Number of columns available for the footer component, max 12
        available: true  # Whether or not you're available for hire
        vibrant: false   # Makes the widget much more noticeable
        message: "Available for new opportunities"
```

If `oscailte.hire.available` is set to `true`, then the displayed message will become a link, with a `mailto:` populated with your `site.email`.

## Customising Oscailte

### Site Colours

Many of the colours used throughout Oscailte can be fully customised and found within [`_variables.scss`](https://github.com/coogie/oscailte/blob/master/sass/oscailte/_variables.scss).

### Default Dummy Text

You can modify the default 'Lorem Ipsum' text on the Hero Unit and homepage by editing the following files:
* [`source/_includes/custom/hero/welcome.html`](https://github.com/coogie/oscailte/blob/master/source/_includes/custom/hero/welcome.html)
* [`source/_includes/custom/homepage/grid_item_left.html`](https://github.com/coogie/oscailte/blob/master/source/_includes/custom/homepage/grid_item_left.html)
* [`source/_includes/custom/homepage/grid_item_middle.html`](https://github.com/coogie/oscailte/blob/master/source/_includes/custom/homepage/grid_item_middle.html)
* [`source/_includes/custom/homepage/grid_item_right.html`](https://github.com/coogie/oscailte/blob/master/source/_includes/custom/homepage/grid_item_right.html)

### Default Icons on Homepage
You can modify and change the default icons which are above the grid items by editing the following file in the `source` directory:
* `index.html`

You can edit the following class names with your [preferred ones](http://fontawesome.io/icons/) to change the left, middle, and right icons respectively.
``` html
<i class="fa fa-laptop"></i>
<i class="fa fa-search"></i>
<i class="fa fa-coffee"></i>
```

### Using the Blog as the Homepage

By default, Oscailte comes with a homepage separate from the blogging capabilities. If you wish to use the Blog index as your default Hompage, you can run the following command from your root directory:

    $ cp source/blog/index.html source/index.html

This will overwrite the default index with the contents of the Blog index. **Be sure to update your [`source/_includes/custom/navigation.html`](https://github.com/coogie/oscailte/blob/master/source/_includes/custom/navigation.html) file.**


### Modifying the Image and Related Text on Homepage
#### Modifying image
You can change the background image of the Hero Unit by replacing the following file: `source/images/hero_background.jpg`

#### Modifying text
For modifying the text, you can replace the following with your preferred text, or remove it entirely in `source/_includes/site/hero_unit.html`:

``` html
Cliffs of Moher, by <a href="http://www.flickr.com/photos/alfarese/2780612581/" target="_blank">Alessandro Farese</a> <a href="http://creativecommons.org/licenses/by-nc-nd/2.0/deed.en" target="_blank" class="licence"><small>(by-nc-nd)</small></a>

```
