# Contributing to p5.js website internationalization (i18n)

If you want to contribute with p5.js website translations you are in the right place. The translation of the p5.js website to languages other than English is part of its internationalization -abbreviated [*i18n*](https://en.wikipedia.org/wiki/Internationalization_and_localization)- process. You can improve content that has been already translated -at the reference, examples or other pages within the website- as well as start a new language translation. Some topics of this documentation were taken from the README.md file of this repo.

## Table of Contents

* [How the website works](#how-the-website-works)
* [Setting up before start your contribution](#setting-up-before-start-your-contribution)
* [Before submitting a Pull Request](#before-submitting-a-pull-request)
* [File Structure](#file-structure)
* [Start a new translation](#start-a-new-translation)
* [Working on existing translations](working-on-existing-translations)
  * [Translation of all pages except Reference and Examples](#translation-of-all-pages-except-reference-and-examples)
  * [Translation of Reference](#translation-of-reference)
  * [Translation of Examples](#translation-of-examples)

## How the website works
1. Due to internationalization (i18n) this website is built from templates that retrieve the text content from data files
2. There are three kind of pages and each works differently:
   * [Reference](https://github.com/guillemontecinos/itp_fall_2018_open_source_studio/blob/master/final_project/i18n_contribution.md#translation-of-reference): Pages are built in English and swapped to other languages using JS on the front-end. Translation content is stored in a JSON object.
   * [Examples](https://github.com/guillemontecinos/itp_fall_2018_open_source_studio/blob/master/final_project/i18n_contribution.md#translation-of-examples): Examples pages are built from from templates handlebars with handlebars, while examples are stored in JS files.
   * [Other](https://github.com/guillemontecinos/itp_fall_2018_open_source_studio/blob/master/final_project/i18n_contribution.md#translation-of-all-pages-except-reference-and-examples): Pages are built from templates in which handlebars point to the content in the actual language when rendered.
3. Every time a modification is submitted the website is rendered again.
4. Built web is stored under `dist/` directory whilst data and templates are stored under `src/` directory. For further information check the [File Structure](https://github.com/guillemontecinos/itp_fall_2018_open_source_studio/blob/master/final_project/i18n_contribution.md#file-structure).
5. When collaborating just modify files under `src/`, never touch `dist/`


## Setting up before start your contribution
*Please do this only once before you start your contribution.*
1. Install node.js by following the instructions [here](https://nodejs.org/en/download/).
2. [Fork](https://help.github.com/articles/fork-a-repo/) the p5.js-website repository to your Github account. Click the *Fork* button on the upper-right side of the p5.js-website Github repo. This will automatically open your fork repo on Github.
![](https://github.com/guillemontecinos/itp_fall_2018_open_source_studio/blob/master/final_project/assets/fork.png)
3. On your fork click the green *Clone or download* button. It will display a bar from where you can copy your `repo_URL`.
![](https://github.com/guillemontecinos/itp_fall_2018_open_source_studio/blob/master/final_project/assets/clone.png)
4. Open your command-line interface (CLI) and [clone](https://help.github.com/articles/cloning-a-repository/) your fork of the p5.js-website repository to `your_directory` on your laptop by typing:
```bash
$ git clone repo_URL
```
5. Go to the repository's directory `$ Users/your_user/your_directory/p5.js-website/` and install all the packages and dependencies for the website by typing:
```batch
$ npm install
```
6. Check if the packages are correctly installed by typing:
```batch
npm run watch
```
7. This should open a window in your browser with the site running at http://localhost:9000.
8. Set `github.com/processing/p5.js-website` as the upstream of your local. Type the following to list the configured remote for your fork (or follow this [tutorial](https://help.github.com/articles/configuring-a-remote-for-a-fork/)):
```bash
$ git remote -v
origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
```
Then specify a new remote upstream for your fork (don't forget that by doing this you are setting the upstream for your local fork, but not for your fork on Github):
```bash
$ git remote add upstream github.com/processing/p5.js-website
```
Finally verify if your remote upstream has been set (it should look like this):
```bash
$ git remote -v
origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
upstream  https://github.com/processing/p5.js-website.git (fetch)
upstream  https://github.com/processing/p5.js-website.git (push)
```

## Before submitting a Pull Request
*Please do this every time you submit a PR.*
1. Sync your fork to keep it up-to-date with the upstream repository following the next commands or this [tutorial](https://help.github.com/articles/syncing-a-fork/). First fetch the upstream repo and its commits -commits will be stored on your local fork- and then merge changes form upstream to your local:
```bash
$ git fetch upstream
$ git merge upstream/master
```
2. Make changes only at files under the `src/` directory.
3. Check if your changes are correct and don't break the website render by typing `$ npm run watch`.
4. Commit only the files you have changed, type:
```bash
$ git add src/
$ git commit -m "add a message to your commit"
$ git push
```
5. Commit to your repository at your github account and create a new [Pull Request](https://github.com/processing/p5.js-website/wiki/Pull-requests). Click the *Pull Reques* tab on your fork page and then click the green button *New Pull Request*.
![](https://github.com/guillemontecinos/itp_fall_2018_open_source_studio/blob/master/final_project/assets/pull_request.png)

## File Structure
Under this repo there are two directories in which we have to focus:
```
p5.js-website/
  src/
  dist/
```
* `dist/`: The actual website is stored under this directory and its files **must never be modified by hand**, they are overwritten each time the web is built.
* `src/`: contains the files from where the page is rendered, which means .hbs and .yml files for the website itself and .js and .json files for Reference and Examples. **All your changes must be done here**.
  * `assets/` – All static files (imgs, css, fonts, js, p5_featured homepage sketches)
    * Note: if you make edits here you must restart the server to see your changes. To see changes immediately, you can edit the assets files in the dist directory, but need to copy and paste your updated work here for it to be saved.
  * `data/` – translation files
  * `templates/`
    * `layouts/` – default.hbs is main page template
    * `pages/` – Contains each of the pages of the p5 site, these get inserted in `{{> body }}` tag of default layout.
    * `partials/` – These are reusable pieces that can get added to any page or layout, they correspond to other `{{> filename }}` tags in the pages or default layout.
* `Gruntfile.js` – This file contains all the tasks for using assemble and YAML to generate the final, static site. It uses the task runner [grunt](http://gruntjs.com/).

## Start a new translation
1. Define a two-letter abbreviation for your language. You can use this [page](https://www.abbreviations.com/acronyms/LANGUAGES2L) as a guide.
2. Add an entry with the new language abbreviation at `package.json` to the `languages` category -located under the repository root directory.
```JSON
"languages": [
  "en",
  "es",
  "zh-Hans",
  "new language here"
],
```
3. Duplicate `en.yml` -stored under `src/data/`- and name it `language_abbreviation.yml`. For example, when the Spanish version was created it was named `es.yml`. Check [How the website works](#how-the-website-works) and [File Structure](#file-structure) for further information.
4. Duplicate `es.json` -stored under `src/data/reference/`- and name it `language_abbreviation.json`. Unlike the previous step `es.json` must be copied because there's no a `en.js` for the same reason explained in [How the website works](#how-the-website-works).

## Working on existing translations

### Translation of all pages except Reference and Examples
Each website is written in [.hbs](https://www.npmjs.com/package/hbs) format -files created with Handlebars and written using HTML rules- using handlers to access the i18n data of each language and render. Hbs files are stored under `src/template/pages`.

The i18n data is stored in [.yml](https://en.wikipedia.org/wiki/YAML) files in the `src/data` folder of this repo. For example, under the above mentioned path the .yml files for English, Spanish and Chinese can be found as follows:

```
en.yml
es.yml
zh-Hans.yml
```

Within the .hbs pages there are tags that replace the actual content and look like this: `{{#i18n "MyKeyword"}}{{/i18n}}`. For example the *Download* tag at the main bar looks like this:

```html
<li><a href="{{root}}/download/">{{#i18n "Download"}}{{/i18n}}</a></li>
```

In this example "Download" corresponds to the key-value pair for the translation of that content to other languages. Each key-value can point to a word as well as a phrase. and there must be a key-value for each handler entry in every language, otherwise the website render process can be broken.

Each page contains YAML "front matter" at the top which includes a title and (optional) slug field. The title corresponds to the section in which to place the i18n key-value pairs. (Note: each page has only one title, so for partials within the `partials` folder, place the i18n pairs at the top level). The slug corresponds to the folder in which the page will be placed. This should generally match the folder structure within the `pages` folder.

For nested pages -for example `p5js.org/es/learn/color.html`- the slug of the .hbs document must match the upper folder, in this case `learn`. This is directly related with the way handlers are displayed in the .yml file. For example, all the handlers for the `learn` page are written under its slug with a tab as follows:

```javascript
learn:
  learn-title: "Aprender"
  learn1: "Estos tutoriales proveen una revisión en mayor profundidad o paso a paso sobre temas particulares. Revisa la "
```

But for nested pages it's important not to create a new slug for each page, because it can make the .hbs files not to find the handlers when calling the i18n data. So, for the page color **it is not needed to create a new** `slug: color/` like:

```javascript
color:
  color-title: "Color"
```

Instead of this, the color-related handler must be added to the `learn` list of handlers. For English version, the site will follow the same top-level hierarchy as the original site. When you switch to a different language, the permalink and file structure will include the language abbreviation immediately following the root url. (ex: `https://p5js.org/es/get-started/`)

**Yml files can break the page compilation** process under syntax issues as double quotes within the text. Each YAML handler must be written as `color-rgb-title: "Color RGB"`, which means that the handler `color-rgb-title` has assigned the content `"Color RGB"` in the current language .yml file.

In some cases, the text translated from the original .hbs file (written in HTML) included double quotes used for highlight some idea. In those cases remember to use the scape command `\` before the quotes, otherwise your compiler will interpret it as a syntax error due the handler finished more the one time.

### Translation of Reference
* The reference works a bit differently. The pages are built in English based on the inline documentation in the source code. They are then swapped out using [JS on the front-end](https://github.com/processing/p5.js-website/blob/master/dist/reference/index.html#L130).
* The top level keys in the JSON object correspond to the page headings, menu, footer, etc. You can see all the swaps in [this file](https://github.com/processing/p5.js-website/blob/master/dist/reference/index.html#L130).
* The "p5" key in the JSON object contains individual keys for each reference entry, indexed by variable/function/object name.
* Any entries in the JSON object which are not filled in will be left in English when the page is loaded.
* This is a somewhat hacky solution and not ideal. However, it comes from balancing the desire to have documentation directly in the source code, with the unwieldiness of having multiple languages of documentation inline. It will be our working solution until a better one is found.
* The source content for the reference is handled inline in the [p5.js source code](https://github.com/processing/p5.js). See [Inline documentation](https://github.com/processing/p5.js/blob/master/developer_docs/inline_documentation.md) in the p5.js repo for information on how to contribute.

### Translation of Examples
The examples are handled a bit differently from other pages.
* All examples pages are built from `src/data/examples`.
* Within the examples folder, there is a folder for each of the three languages we currently support: `en/`, `es/`, and `zh-Hans/`. When adding a new example, first add an English version of the file to the `en/` folder, then make sure it is duplicated in the same place in all other languages, then translate for whichever languages you can. If you have created a new folder, add entries to the YAML files with the foldername as the key.
* The folder, file, and numbering structure should match exactly between the different languages. Do not change the filenames. The text for the example name, description, and source code are all in the .js files in the folders.
* Assets for the examples are placed in `src/data/examples/assets`.
* Translations for the topic headers on the example index page are done in the YAML files (`src/data/*.yml`).
