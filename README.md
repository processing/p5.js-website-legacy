ed# p5js website

This is a rebuild of the original p5.js website [p5js.org](https://p5js.org) using Grunt, YAML, and Assemble. The goals are to implement internationalization (i18n) and to improve site accessibility.

**If you're looking for the current version of the website, it is here: https://github.com/processing/p5.js-website. You can report issues with that [here](https://github.com/processing/p5.js-website/issues]).**

## Setup

0. Install [node.js](https://nodejs.org/en/download/).
1. Download this zip file or [clone this repository](https://help.github.com/articles/cloning-a-repository/) and navigate to the directory in the terminal.
2. Type `npm install`.
2. Type `grunt server` to run.
3. This should open a window in your browser with the site running at http://localhost:9000. 


## Running

Once you've setup the site, to run again in the future:

1. Type `grunt server` to run.
2. This should open a window in your browser with the site running at http://localhost:9000. 

## File structure

* `src` – All the pieces for generating the built site. __Edits should be made here.__
  * `assets` – All static files (imgs, css, fonts, js, p5_featured homepage sketches)
    * Note: if you make edits here you must restart the server to see your changes. To see changes immediately, you can edit the assets files in the dist directory, but need to copy and paste your updated work here for it to be saved.
  * `data` – translation files
  * `templates`
    * `layouts` – default.hbs is main page template
    * `pages` – Contains each of the pages of the p5 site, these get inserted in `{{> body }}` tag of default layout.
    * `partials` – These are reusable pieces that can get added to any page or layout, they correspond to other `{{> filename }}` tags in the pages or default layout.
* `dist` – Where the rendered files are stored, this can be placed directly online.
* `Gruntfile.js` – This file contains all the tasks for using assemble and YAML to generate the final, static site. It uses the taskrunner [grunt](http://gruntjs.com/).

## Internationalization (i18n) and structure

* Each page uses handlebars to access the i18n data and render. The .yml files in the `src/data` folder hold the i18n data for each language. Within the pages there are tags that look like this: `{{#i18n "MyKeyword"}}{{/i18n}}`

* MyKeyword corresponds to the key-value pair for the translation of that word or phrase. There should be a MyKeyword entry in every language file for things to render correctly.

* Each page contains YAML "front matter" at the top which includes a title and (optional) slug field. The title corresponds to the section in which to place the i18n key-value pairs. (Note: each page has only one title, so for partials within the `partials` folder, place the i18n pairs at the top level.)

* The slug corresponds to the folder in which the page will be placed. This should generally match the folder structure within the `pages` folder.

* For english version, the site will follow the same top-level hierarchy as the original site. When you switch to a different language, the permalink and file structure will include a two letter abbreviation immediately following the root url. (ex: `https://p5js.org/es/get-started/`)


## Notes about Examples

The examples are handled a bit differently from other pages.

* All examples pages are built from `src/assets/data/examples`.
* Within the examples folder, there is a folder for each language (ex: `en/`, `es/`, etc).
* The folder, file, and numbering structure should match exactly between the different languages. Do not change the filenames. The text for the example name, description, and source code are all in the .js files in the folders.
* Assets for the examples are placed in `src/assets/data/examples/assets`.
* Translations for the topic headers on the example index page are done in the YAML files (`src/assets/data/*.yml').
* When adding a new example, first add an english version of the file to the `en/` folder, then make sure it is duplicated in the same place in all other languages, then translate for whichever languages you can. If you have created a new folder, add entries to the YAML files with the foldername as the key.


## Documentation

* [Assemble](http://assemble.io/) is used to build a static site out of all the layouts and yml data.
* [grunt-assemble-i18n](https://github.com/assemble/grunt-assemble-i18n) renders a set of pages for each language specified in the gruntfile, based on the handlebars templates and yml data. There is not a lot of documentation, but this [example](https://github.com/LaurentGoderre/i18n-demo) demonstrates the functionality well.
* [assemble-contrib-permalinks](https://github.com/assemble/assemble-permalinks) allows us to customize the permalinks (file structure of the rendered static site).

## Etc

* If you are using sublime text, this plugin is useful for rendering hbs files with syntax highlighting: https://github.com/jonschlinkert/sublime-markdown-extended


