[![Build Status](https://travis-ci.com/processing/p5.js-website.svg?branch=master)](https://travis-ci.com/processing/p5.js-website)

# p5js website

## How To Contribute

Known bugs and intended new features are tracked using [GitHub issues](https://github.com/processing/p5.js-website/issues). If you'd like to start working on an existing issue, comment on the issue that you plan to work on it so other contributors know it's being handled and can offer help. Once you have completed your work on this issue, [submit a pull request (PR)](https://github.com/processing/p5.js/blob/main/contributor_docs/preparing_a_pull_request.md) against the p5.js main branch. In the description field of the PR, include "resolves #XXXX" tagging the issue you are fixing. If the PR addresses the issue but doesn't completely resolve it (ie the issue should remain open after your PR is merged), write "addresses #XXXX".

If you discover a bug or have an idea for a new feature you'd like to add, begin by submitting an issue. Please do not simply submit a pull request containing the fix or new feature without making an issue first, we will probably not be able to accept it. Once you have gotten some feedback on the issue and a go ahead to address it, you can follow the process above to add the fix or feature.

We recognize all types of contributions. This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Add yourself to the [p5.js repository readme](https://github.com/processing/p5.js/blob/main/README.md#contributors) by following the [instructions here](https://github.com/processing/p5.js/issues/2309)!


## Setup

0. Ensure Java is installed. Not installed?  Head over to https://java.oracle.com
1. Install [node.js](https://nodejs.org/en/download/).
2. [Clone this repository](https://help.github.com/articles/cloning-a-repository/). 
3. Navigate to the `p5.js-website` directory in the terminal and type `npm install`.

## Running

Once you've setup the site, type `npm run watch` to run the website. This should open a window in your browser with the site running at http://localhost:9000.

## File structure

* __See note about what to include in pull requests [here](https://github.com/processing/p5.js/blob/main/contributor_docs/preparing_a_pull_request.md).__
* `src/` – All the pieces for generating the built site. __Edits should be made here.__
  * `assets/` – All static files (imgs, css, fonts, js, p5_featured homepage sketches)
    * Note: if you make edits here you must restart the server to see your changes. To see changes immediately, you can edit the assets files in the dist directory, but need to copy and paste your updated work here for it to be saved.
  * `data/` – translation files
  * `templates/`
    * `layouts/` – default.hbs is main page template
    * `pages/` – Contains each of the pages of the p5 site, these get inserted in `{{> body }}` tag of default layout. Note that for some pages (ex: learn, teach, and libraries) the hbs files are built from ejs files in the `data/` folder. When this is the case, you will find a README file inside that page's folder with notes about how this works.
    * `partials/` – These are reusable pieces that can get added to any page or layout, they correspond to other `{{> filename }}` tags in the pages or default layout.
* `dist/` – Where the rendered files are stored, this gets generated via `grunt server` but does not get added to pull requests as it is auto-built online.
* `Gruntfile.js` – This file contains all the tasks for using assemble and YAML to generate the final, static site. It uses the taskrunner [grunt](http://gruntjs.com/).

## Tools

* [Assemble](http://assemble.io/) is used to build a static site out of all the layouts and yml data.
* [grunt-assemble-i18n](https://github.com/assemble/grunt-assemble-i18n) renders a set of pages for each language specified in the gruntfile, based on the handlebars templates and yml data. There is not a lot of documentation, but this [example](https://github.com/LaurentGoderre/i18n-demo) demonstrates the functionality well.
* [assemble-contrib-permalinks](https://github.com/assemble/assemble-permalinks) allows us to customize the permalinks (file structure of the rendered static site).

## Add yourself to contributors!

If you've contributed to this website (or any other part of the p5.js project), add yourself [here](https://github.com/processing/p5.js#contributors). Instructions to do this can be found at the bottom of the section.

## Etc
* [Instructions for contributing to website translation/internationalization](https://github.com/processing/p5.js-website/blob/main/contributor_docs/i18n_contribution.md)
* [Introducción a p5.js](https://github.com/processing/p5.js-getting-started-es) - The repository for the book and PDF production of [Introducción a p5.js](http://p5js.org/books/).

## Externally hosted language versions
* [https://p5js.jp](https://p5js.jp/) - 日本語 (Japanese), translated and hosted by [Katsuya Endoh](https://enkatsu.org/)

