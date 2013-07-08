# Oscailte &mdash; An Octopress theme

Oscailte ([IPA: [ˈɔsˠkɪlʲtʲɪ]](http://en.wiktionary.org/wiki/Appendix:Irish_pronunciation)) is a light and clean theme, built using [inuit.css](http://inuitcss.com/), for use on [Octopress](http://octopress.org/) sites. The theme can be viewed in action on [my personal site](http://coog.ie/).

## Installation

Oscailte requires that you use Sass 3.2.9 (Media Mark) or greater, so you may need to run a `bundle update` before you run your initial `rake generate` after installing the theme. You can check your current gem version by running `gem list sass` in your Octopress directory.

You can install Oscailte like so:

    $ cd your_octopress_directory
    $ git clone https://github.com/coogie/oscailte.git .themes/oscailte
    $ rake install['oscailte']
    $ bundle update //You may or may not need this, check note above
    $ rake generate

## To-do

There is a lot left to do on this them and I will be adding a list here with a bunch of things that need adding or fixing.
If there is anything you'd like to fix yourself, or anything that you wish to add, then by all means create an issue or a pull request!