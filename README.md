# p5js website

## Setup

0. Install [node.js](https://nodejs.org/en/download/).
1. Download this zip file or [clone this repository](https://help.github.com/articles/cloning-a-repository/) and navigate to the directory in the terminal.
2. Type `npm install`.
2. Copy `dist\download\version-sample.json` to `dist\download\version.json`.
2. Type `npm run watch` to run.
3. This should open a window in your browser with the site running at http://localhost:9000.

## Running

Once you've setup the site, to run again in the future:

1. Type `npm run watch` to run.
2. This should open a window in your browser with the site running at http://localhost:9000.

## File structure

* __See note about what to include in pull requests [here](https://github.com/processing/p5.js-website/wiki/Pull-requests).__
* `src/` – All the pieces for generating the built site. __Edits should be made here.__
  * `assets/` – All static files (imgs, css, fonts, js, p5_featured homepage sketches)
    * Note: if you make edits here you must restart the server to see your changes. To see changes immediately, you can edit the assets files in the dist directory, but need to copy and paste your updated work here for it to be saved.
  * `data/` – translation files
  * `templates/`
    * `layouts/` – default.hbs is main page template
    * `pages/` – Contains each of the pages of the p5 site, these get inserted in `{{> body }}` tag of default layout.
    * `partials/` – These are reusable pieces that can get added to any page or layout, they correspond to other `{{> filename }}` tags in the pages or default layout.
* `dist/` – Where the rendered files are stored, this can be placed directly online.
* `Gruntfile.js` – This file contains all the tasks for using assemble and YAML to generate the final, static site. It uses the taskrunner [grunt](http://gruntjs.com/).

## Internationalization (i18n) and structure

### Translation for all pages except Reference (YML)

* Each website page uses handlebars to access the i18n data and render. The .yml files in the `src/data` folder hold the i18n data for each language. Within the pages there are tags that look like this: `{{#i18n "MyKeyword"}}{{/i18n}}`
* MyKeyword corresponds to the key-value pair for the translation of that word or phrase. There should be a MyKeyword entry in every language file for things to render correctly.
* Each page contains YAML "front matter" at the top which includes a title and (optional) slug field. The title corresponds to the section in which to place the i18n key-value pairs. (Note: each page has only one title, so for partials within the `partials` folder, place the i18n pairs at the top level.)
* The slug corresponds to the folder in which the page will be placed. This should generally match the folder structure within the `pages` folder.
* For english version, the site will follow the same top-level hierarchy as the original site. When you switch to a different language, the permalink and file structure will include a two letter abbreviation immediately following the root url. (ex: `https://p5js.org/es/get-started/`)

### Translation for Reference (JSON)

 * The reference works a bit differently. The pages are built in English based on the inline documentation in the source code. They are then swapped out using [JS on the front-end](https://github.com/processing/p5.js-website/blob/master/dist/reference/index.html#L130).
 * The top level keys in the JSON object correspond to the page headings, menu, footer, etc. You can see all the swaps in [this file](https://github.com/processing/p5.js-website/blob/master/dist/reference/index.html#L130).
 * The "p5" key in the JSON object contains individual keys for each reference entry, indexed by variable/function/object name.
 * Any entries in the JSON object which are not filled in will be left in English when the page is loaded.
 * This is a somewhat hacky solution and not ideal. However, it comes from balancing the desire to have documentation directly in the source code, with the unwieldiness of having multiple languages of documentation inline. It will be our working solution until a better one is found.

## Updating the Reference text

The documentation for p5.js is handled inline in the source code. See [Inline documentation](https://github.com/processing/p5.js/blob/master/developer_docs/inline_documentation.md) in the p5.js repo for information on how to contribute.

## Notes about translating Examples

The examples are handled a bit differently from other pages.

* All examples pages are built from `src/data/examples`.
* Within the examples folder, there is a folder for each of the three languages we currently support: `en/`, `es/`, and `zh-Hans/`. When adding a new example, first add an English version of the file to the `en/` folder, then make sure it is duplicated in the same place in all other languages, then translate for whichever languages you can. If you have created a new folder, add entries to the YAML files with the foldername as the key.
* The folder, file, and numbering structure should match exactly between the different languages. Do not change the filenames. The text for the example name, description, and source code are all in the .js files in the folders.
* Assets for the examples are placed in `src/data/examples/assets`.
* Translations for the topic headers on the example index page are done in the YAML files (`src/data/*.yml`).

### Adding a new language

1. Duplicate `[en.yml]`(https://github.com/processing/p5.js-website/blob/master/src/data/en.yml) in `src/data` and name it `{languageabbreviation}.yml`. For example `es.yml`. See this page for [two-letter language abbreviations](https://www.abbreviations.com/acronyms/LANGUAGES2L).
2. Duplicate `[es.json]`(https://github.com/processing/p5.js-website/blob/master/src/data/reference/es.json) and name it `{languageabbreviation}.json`.
3. Add an entry with the language abbreviation [here](https://github.com/processing/p5.js-website/blob/master/Gruntfile.js#L90).
 

## Documentation

* [Assemble](http://assemble.io/) is used to build a static site out of all the layouts and yml data.
* [grunt-assemble-i18n](https://github.com/assemble/grunt-assemble-i18n) renders a set of pages for each language specified in the gruntfile, based on the handlebars templates and yml data. There is not a lot of documentation, but this [example](https://github.com/LaurentGoderre/i18n-demo) demonstrates the functionality well.
* [assemble-contrib-permalinks](https://github.com/assemble/assemble-permalinks) allows us to customize the permalinks (file structure of the rendered static site).

## Add yourself to contributors!

If you've contributed to this website (or any other part of the p5.js project), add yourself [here](https://github.com/processing/p5.js#contributors). Instructions to do this can be found at the bottom of the section.

 
### Etc
* Introducción a p5.js - The repository for the book and PDF production of Introducción a p5.js can be found [here](https://github.com/processing/p5.js-getting-started-es).
