# This repository is archived. You can find the current repository for the p5js.org website here: https://github.com/processing/p5.js-website

# p5js website

## How To Contribute

Known bugs and intended new features are tracked using [GitHub issues](https://github.com/processing/p5.js-website/issues). If you'd like to start working on an existing issue, comment on the issue that you plan to work on it so other contributors know it's being handled and can offer help. Once you have completed your work on this issue, [submit a pull request (PR)](https://github.com/processing/p5.js/blob/main/contributor_docs/contributor_guidelines.md#pull-requests) against the p5.js main branch. In the description field of the PR, include "resolves #XXXX" tagging the issue you are fixing. If the PR addresses the issue but doesn't completely resolve it (ie the issue should remain open after your PR is merged), write "addresses #XXXX".

If you discover a bug or have an idea for a new feature you'd like to add, begin by submitting an issue. Please do not simply submit a pull request containing the fix or new feature without making an issue first, we will probably not be able to accept it. Once you have gotten some feedback on the issue and a go ahead to address it, you can follow the process above to add the fix or feature.

We recognize all types of contributions. This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Add yourself to the [p5.js repository readme](https://github.com/processing/p5.js/blob/main/README.md#contributors) by following the [instructions here](https://github.com/processing/p5.js/issues/2309)!

## Add Yourself to Contributors

If you've contributed to this website (or any other part of the p5.js project), add yourself [here](https://github.com/processing/p5.js#contributors). Instructions to do this can be found at the bottom of the section.

## Stewards
Stewards are contributors that are particularly involved, familiar, or responsive to certain areas of the project. Their role is to help provide context and guidance to others working on p5.js website. If you have a question about contributing to a particular area, you can tag the listed steward in an issue or pull request. They may also weigh in on feature requests and guide the overall direction of their area, with the input of the community.You can read more about the organization of the project at [contributor_docs/organization.md](https://github.com/processing/p5.js/blob/main/contributor_docs/organization.md), p5.js [Contributor Guidelines](https://github.com/processing/p5.js/blob/main/contributor_docs/contributor_guidelines.md), and p5.js [Steward Guidelines](https://github.com/processing/p5.js/blob/main/contributor_docs/steward_guidelines.md).

✨**Anyone interested can volunteer to be a steward!** ✨There are no specific requirements for expertise, just an interest in actively learning and participating. We can start with **1-3 stewards for each area**.  If you’re familiar with one or more areas of p5.js website, please reply to [this issue](https://github.com/processing/p5.js-website/issues/1220) to volunteer as a steward!

Once added, a steward's username will remain in the [stewards section of the readme](https://github.com/processing/p5.js-website#stewards) until they request to be removed. If a steward is unresponsive for an extended period of time, we may ping them to ask about their status. And you can always take a break as a steward and come back!

### Website Steward(s)  

| Area                         | Steward(s)                                               |
| ---------------------------- | -------------------------------------------------------- |
| Overall                      | [@Qianqianye](https://github.com/Qianqianye), [@limzykenneth](https://github.com/limzykenneth) |
| Reference                    |  [@Divyansh013](https://github.com/Divyansh013)                      |
| Example                      | GSoC 2022: [@Malayvasa](https://github.com/Malayvasa) (Contributor), [@tyler-yin](https://github.com/tyler-yin)(Mentor); [@3ru](https://github.com/3ru) |
| Teach                        | GSoC 2022: [@Gracia-zhang](https://github.com/Gracia-zhang) (Contributor), [@yinhwa](https://github.com/yinhwa)(Mentor); [@SarveshLimaye](https://github.com/SarveshLimaye)|
| Showcase                     | GSoC 2022:  [@anniezhengg](https://github.com/anniezhengg) (Contributor), [@raclim](https://github.com/raclim)(Mentor) |
| Learn                        | [@nickmcintyre](https://github.com/nickmcintyre)                                  |
| Libraries                    | [@Qianqianye](https://github.com/Qianqianye)                                           |
| Community/Books/Social Media | [@Qianqianye](https://github.com/Qianqianye)                                           |
| Contributor Docs             | SoD 2022: [@limzykenneth](https://github.com/limzykenneth) |
| Other suggested area?        |                                                          |

### Translation Steward(s) 
| Language | Steward(s)                |
| -------- | ------------------------- |
| Overall  |[@Qianqianye](https://github.com/Qianqianye), [@limzykenneth](https://github.com/limzykenneth) |
| Spanish  |[@Guirdo](https://github.com/Guirdo), [@Andreu-G](https://github.com/Andreu-G), [@dnd-alv](https://github.com/dnd-alv), [@holomorfo](https://github.com/holomorfo) |
| Chinese  | [@unicar9](https://github.com/unicar9), [@Gracia-zhang](https://github.com/Gracia-zhang), [@pentalei](https://github.com/pentalei)              |
| Korean   | [@yinhwa](https://github.com/yinhwa), [@almchung](https://github.com/almchung), [@jhongover9000](https://github.com/jhongover9000), [@sssueing](https://github.com/sssueing), [@GeryGeryGery](https://github.com/GeryGeryGery), [@sosunnyproject](https://github.com/sosunnyproject) |
| Hindi    | [@adarrssh](https://github.com/adarrssh), [@Divyansh013](https://github.com/Divyansh013), [@deepchauhan](https://github.com/deepchauhan), [@SarveshLimaye](https://github.com/SarveshLimaye)|

Other Language Steward(s):
* Portuguese: [@raphaelavelar](https://github.com/raphaelavelar), [@mrseoliveira](https://github.com/mrseoliveira)



## Setup

1. Install [node.js](https://nodejs.org/en/download/).
2. Clone this repo by typing ```git clone https://github.com/processing/p5.js-website/``` in terminal.
3. Navigate to the `p5.js-website` directory in the terminal and type `npm install`.

## Running

Once you've setup the site, type `npm run watch` to run the website. This should open a window in your browser with the site running at http://localhost:9000.

## File structure

* __See note about what to include in pull requests [here](https://github.com/processing/p5.js/blob/main/contributor_docs/contributor_guidelines.md#pull-requests).__
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

## Translation/i18n
* [Instructions](https://github.com/processing/p5.js-website/blob/main/contributor_docs/i18n_contribution.md) for contributing to website translation/internationalization

## Externally hosted language versions
* [https://p5js.jp](https://p5js.jp/) - 日本語 (Japanese), translated and hosted by [Katsuya Endoh](https://enkatsu.org/)
* [https://p5js-unofficial-french-translation.vercel.app](https://p5js-unofficial-french-translation.vercel.app) - French, translated and hosted by [LEMIBANDDEXARI](https://github.com/LEMIBANDDEXARI/p5js-unofficial-french-translation)

Regarding website translation, we are rolling out new languages slowly to be absolutely sure that we can support the full translation and maintenance of each language. We want to avoid the situation where we have many languages and it's beyond our means to support. So for this reason, we are holding now with Spanish, Chinese, Korean, and Hindi and getting those fully complete before we take on others.

We very much welcome translations that are hosted elsewhere. For example, https://p5js.jp/ - 日本語 (Japanese), translated and hosted by [Katsuya Endoh](https://enkatsu.org/). Please feel free to translate any of the website content and host it on an external blog or site. All of the website content is licensed under Creative Commons which makes it possible to reuse this content for non-commercial purposes if it is credited. We would be happy to share links and make connections so others can find and use this material.

