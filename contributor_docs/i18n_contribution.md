# Contributing to p5.js website internationalization (i18n)

If you want to contribute with p5.js website translations, you are in the right place. The translation of the p5.js website to languages other than English is part of its internationalization - abbreviated [*i18n*](https://en.wikipedia.org/wiki/Internationalization_and_localization) - process. You can improve content that has been already translated - at the reference, examples or other pages within the website - as well as start a new language translation.

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

1. Due to internationalization (i18n), this website is built from templates that retrieve the text content from data files
2. There are three kind of pages and each works differently:
   * [Reference](#translation-of-reference): Pages are built in English and swapped to other languages using JS on the front-end. Translation content is stored in a JSON object.
   * [Examples](#translation-of-examples): Examples pages are built from templates with handlebars, while examples are stored in JS files.
   * [Other](#translation-of-all-pages-except-reference-and-examples): Pages are built from templates in which handlebars point to the content in the actual language when rendered.
3. Every time a modification is submitted the website is rendered again.
4. Built web is stored under `dist/` directory whilst data and templates are stored under `src/` directory. For further information check the [File Structure](#file-structure).
5. When collaborating code editing have to be done in files under `src/`, but not under `dist/` as files in there are removed and recreated on build.

## Setting up before start your contribution

*Please do this only once before you start your contribution.*

1. Install node.js by following the instructions [here](https://nodejs.org/en/download/).
2. [Fork](https://help.github.com/articles/fork-a-repo/) the p5.js-website repository to your Github account. Click the *Fork* button on the upper-right side of the p5.js-website Github repo. This will automatically open your fork repo on Github.
![processing/p5.js-website repository menu. At the right bottom of the menu the "fork" button is highlighted](https://github.com/processing/p5.js-website/raw/master/contributor_docs/assets/fork.png)
3. On your fork click the green *Clone or download* button. It will display a bar from where you can copy your `repo_URL`.

    ![processing/p5.js-website repository menu. The "Clone or download" button is pressed and a tab is displayed under it from which the repository's link can be copied.](https://github.com/processing/p5.js-website/raw/master/contributor_docs/assets/clone.png)

4. Open your command-line interface (CLI) and [clone](https://help.github.com/articles/cloning-a-repository/) your fork of the p5.js-website repository to `your_directory` on your laptop by typing:
    ```
    $ git clone repo_URL
    ```

5. Go to the repository's directory `[your_directory]/p5.js-website/` and install all the packages and dependencies for the website by typing (if you work on Mac it should be like `Users/[your_user]/[your_directory]/p5.js-website/`):

    ```
    $ npm install
    ```
6. Check if the packages are correctly installed by typing:

    ```
    $ npm run watch
    ```

7. This should open a window in your browser with the site running at http://localhost:9000.
8. Set `github.com/processing/p5.js-website` as the upstream of your local. Type the following to list the configured remote for your fork (or follow this [tutorial](https://help.github.com/articles/configuring-a-remote-for-a-fork/)):
    ```
    $ git remote -v
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
    ```

9. Then specify a new remote upstream for your fork (don't forget that by doing this you are setting the upstream for your local fork, but not for your fork on Github):
    ```
    $ git remote add upstream github.com/processing/p5.js-website
    ```

10. Finally verify if your remote upstream has been set (it should look like this):

    ```
    $ git remote -v
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
      upstream  https://github.com/processing/p5.js-website.git (fetch)
      upstream  https://github.com/processing/p5.js-website.git (push)
    ```

## Before submitting a Pull Request

*Please do this every time you submit a PR.*

1. Sync your fork to keep it up-to-date with the upstream repository following the next commands or this [tutorial](https://help.github.com/articles/syncing-a-fork/). First fetch the upstream repo and its commits -commits will be stored on your local fork- and then merge changes from upstream to your local:

    ```
    $ git fetch upstream
    $ git merge upstream/master
    ```

2. Make changes only at files under the `src/` directory.
3. Check if your changes are correct and don't break the website render by typing `npm run watch`.
4. Commit the files you have changed, type:

    ```
    $ git add -A
    $ git commit -m "add a message to your commit"
    $ git push
    ```

5. Commit to your repository at your github account and create a new [Pull Request](https://github.com/processing/p5.js-website/wiki/Pull-requests). Click the *Pull Reques* tab on your fork page and then click the green button *New Pull Request*.
![processing/p5.js-website repository menu. "Pull requests" tab is opened and a green button with the text "New pull request" is displayed a the right bottom of the menu.](https://github.com/processing/p5.js-website/tree/master/contributor_docs/assets/pull_request.png)

## File Structure
Under this repo there are two directories in which we have to focus:
```
p5.js-website/
  src/
  dist/
```

* `dist/`: the actual website is stored under this directory and its files **must never be modified by hand**, they are overwritten each time the web is built.
* `src/`: contains the files from where the page is rendered, which means .hbs and .yml files for the website itself and .js and .json files for Reference and Examples. **All your changes must be done here**.
  * `assets/` – All static files (imgs, css, fonts, js, p5_featured homepage sketches)
    * Note: if you make edits here you must restart the server to see your changes. To see changes immediately, you can edit the assets files in the dist directory, but need to copy and paste your updated work here for it to be saved.
  * `data/` – contains translation files and assets for examples (audio files, fonts, videos).
  * `templates/`
    * `layouts/` – default.hbs is main page template.
    * `pages/` – Contains each of the pages of the p5 site, these get inserted in `{{> body }}` tag of default layout.
    * `partials/` – These are reusable pieces that can get added to any page or layout, they correspond to other `{{> filename }}` tags in the pages or default layout.
* `Gruntfile.js` – This file contains all the tasks for using assemble and YAML to generate the final, static site. It uses the task runner [grunt](http://gruntjs.com/).

## Start a new translation

1. Define an abbreviation for your language following the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) standard. It's expected that abbreviations are two-letter, but for macro languages can be added extra extensions depending on each case.
2. Open a new issue and propose the addition of the new language. If both the proposal and the abbreviation are approved proceed with the next step.
3. Add an entry with the new language abbreviation at `package.json` to the `languages` category -located under the repository root directory. Please keep the language abbreviations in alphabetical order.

    ```JSON
    "languages": [
      "en",
      "es",
      "zh-Hans",
      "new language here (or in correct alphabetical spot)"
    ],
    ```

4. Duplicate `en.yml` - stored under `src/data/` - and name it `language_abbreviation.yml`. For example, when the Spanish version was created it was named `es.yml`. Check [How the website works](#how-the-website-works) and [File Structure](#file-structure) for further information.
5. Duplicate `es.json` - stored under `src/data/reference/` - and name it `[language_abbreviation].json`.

## Working on existing translations

### Translation of all pages except Reference and Examples

Each webpage is written in [.hbs](https://www.npmjs.com/package/hbs) format -files created with the library Handlebars and written using HTML rules- using handlers to access the i18n data of each language and render. Each handler binds a specific spot on the HTML script with a specific content stored in a database, and is replaced by it when the page is built. Hbs files are stored under `src/template/pages`.

The i18n data is stored in [.yml](https://en.wikipedia.org/wiki/YAML) files in the `src/data` folder of this repo. For example, under the above mentioned path the .yml files for English, Spanish and Chinese can be found as follows:

```filenames
en.yml
es.yml
zh-Hans.yml
```

Within the .hbs pages there are tags that replace the actual content and look like this: `{{#i18n "MyKeyword"}}{{/i18n}}`. For example the *Download* tag at the main bar looks like this:

```html
<li><a href="{{root}}/download/">{{#i18n "Download"}}{{/i18n}}</a></li>
```

In this example "Download" corresponds to the key-value pair for the translation of that content to other languages. Each key-value can point to a word as well as a phrase and there must be a key-value for each handler entry in every language, otherwise the website render process can be broken.

When authoring new tags for translations, it is important to remember not to assume any language structure and make the templates as flexible as possible. Specifically, don't include/hard-code any punctuations in the template. For example:

```html
<p>
  {{#i18n "download1"}}{{/i18n}}
  <a href="../download/">{{#i18n "download2"}}{{/i18n}}</a>
  {{#i18n "download3"}}{{/i18n}}
</p>
```

In the example above, note that after the `download2` i18n tag there is still a `download3` i18n tag, while in English you may have ended your sentence after `download2` and may be tempted to just hard-code a full-stop/period (`.`) in there, depending on the language that may not make sense. The subject-verb-object order of the target language may be different from English so a translator may want to add additional words after the link to complete the sentence. The target language's punctuation may also be different and not always be `.` (eg. in Chinese it is `。`).

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

In some cases, the text translated from the original .hbs file (written in HTML) included double quotes used to highlight some idea. In those cases remember to use the scape command `\` before the quotes, otherwise your compiler will interpret it as a syntax error because the handlers finish more than one time.

### Translation of Reference

* The reference works a bit differently. The pages are built in English based on the inline documentation in the source code. They are then swapped out using JS on the front-end.
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
