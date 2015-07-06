# p5js website

Rebuild of the p5.js website using Node.js, Grunt, YAML and Assemble

## Setup

1. Download this zip file and navigate to the directory in the terminal.
2. Run "grunt server" within this directory in the terimal. 
3. This should open a window in your browser with the site running at localhost:9000. 

## What's going on here?!?! 

### dist: where the rendered files are stored 

### src: where you work! 
**assets:** where css, fonts, images, and js files are stored 
  note: if you make edits here you must restart the server to see your changes. to see changes immediately, you can edit the assets files in the dist directory, but need to copy and paste your updated work here for it to be saved. 

**data:** where the language files are stored
templates:

**layout:** used for "wrapping" the content of individual pages with <head></head> and footer sections, which usually contain necessities such as <link> and <script></script> tags. 

**pages:** the basic content of a view on the site
  
  * each page contains YAML front matter at the top which is used for our own internationalization implementation
  * each page uses handlebars to access the i18n (internationalization) data and render partials
  * **es:** stores the exact same files as the default, but the language at the top is set to es (Spanish)
  * all strings will (eventually) be stored in yml files under the data directory, and a handlebar helper with a key is used to access the content of each string. ex: {{#i18n "key"}}

**partials:** reusable fragments of code that can be included in a page and rendered


**For more information/documentation, check out Assemble's site!**

## [Assemble](http://assemble.io/)

Assemble is a component and static site generator that makes it dead simple to build modular sites, documentation and components from reusable templates and data.

* Documentation
* Plugins - Plugins extend the core functionality of Assemble.
* Helpers - Documentation for the helpers in the [handlebars-helpers](http://github.com/assemble/handlebars-helpers) library.

