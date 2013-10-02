# Oscailte &mdash; An Octopress theme

Oscailte ([IPA: [ˈɔsˠkɪlʲtʲɪ]](http://en.wiktionary.org/wiki/Appendix:Irish_pronunciation)) is a light and clean theme, built using [inuit.css](http://inuitcss.com/), for use on [Octopress](http://octopress.org/) sites. The theme can be viewed in action on [my personal site](http://coog.ie/).

![Oscailte Preview](http://i.imgur.com/0GlIXHW.jpg)

## Quicklinks
  - [Installation](#installation)
  - [Features](#features)
    - [Homepage](#homepage)
    - [Gravatar](#gravatar)
    - [Social sidebar](#social-sidebar)
  - [Customising Oscailte](#customising-oscailte)
    - [Site colours](#site-colours)
    - [Using the Blog as the Homepage](#using-the-blog-as-the-homepage)

## Installation

Oscailte requires that you use Sass 3.2.9 (Media Mark) or greater, so you may need to run a `bundle update` before you run your initial `rake generate` after installing the theme. You can check your current gem version by running `gem list sass` in your Octopress directory.

Because Oscailte also uses git submodules to pull in inuitcss, when you run git clone you must add in the --recursive option in order to get it working.

You can install Oscailte like so:

    $ cd your_octopress_directory
    $ git clone --recursive https://github.com/coogie/oscailte.git .themes/oscailte
    $ rake install['oscailte']
    $ rake generate
    
Having problems when installing with zsh? Try `rake install\['oscailte'\]` instead.

## Features

### Homepage

Oscailte includes a clean page, separated from the blogging capabilities of Octopress. The theme can be modified to instead use just the blog index as the homepage.

### Excerpts

While excerpts are not necessarily a theme feature, Oscailte contains styling to support them. In order to use excerpts on your site simply insert `<!-- more -->` somewhere inside your post content to trigger the break.

![Excerpt Preview](http://i.imgur.com/Hlk0Nqh.png)

### Gravatar

Oscailte makes use of the `site.email` used in `_config.yml` (if present) to grab and display your Gravatar if you use one. Otherwise, the theme will instead display the default Gravatar logo, which can be changed by replacing the file locally.

If you wish to make use of the Gravatar feature, please ensure you use an email address that you do not mind being publicly crawlable by bots/spiders.

### Social Sidebar

Oscailte allows you to display links to your other online profiles in a quick and easy fashion. To display the sidebar links to your other profiles, you must add the following to your `_config.yml` file.

(Oscailte *does not* make use of the default `github_user` and `twitter_user` keys)

```` yml
social:
  title: # Defaults to "Follow me!" if not present
  adn: # App.net
  dribbble: 
  facebook: 
  github: 
  googleplus: 
  linkedin: 
  pinterest: 
  stackoverflow: 
  twitter: 
  youtube: 
````

Oscailte supports the above sites out of the box, but more may be (infinitely) added as the user sees fit.

The colours for these are defined in `_variables.scss` as a key-value pair, with the key being used to create the class name. If you *do* add your own in and would like to colour it accordingly, you can create an entry in your own `_variables.scss` file. You can see the SCSS at work on [L#65 of `_social.scss`](https://github.com/coogie/oscailte/blob/master/sass/oscailte/aside/_social.scss#L65)


```` scss
$sites: 
  adn #4A484C,
  dribbble #EA4C89,
  facebook #3B5998,
  github #333333,
  gplus #db4a39,
  linkedin #4875b4,
  pinterest #CC2127,
  stackoverflow #FE7A15,
  twitter #00a0d1,
  youtube #CC181E;
````

## Customising Oscailte

### Site colours

Many of the colours used throughout Oscailte can be fully customised and found within [`_variables.scss`](https://github.com/coogie/oscailte/blob/master/sass/oscailte/_variables.scss).

### Using the Blog as the Homepage

By default, Oscailte comes with a homepage separate from the blogging capabilities. If you wish to use the Blog index as your default Hompage, you can run the following command from your root directory:

    $ cp source/blog/index.html source/index.html

This will overwrite the default index with the contents of the Blog index. **Be sure to update your [`source/custom/navigation.html`](https://github.com/coogie/oscailte/blob/master/source/_includes/custom/navigation.html) file.**



