let verbose = false;

// now load the modules we need
let ejs = require('ejs'); // library for turning .ejs templates into .html files
let fs = require('fs'); // node.js library for reading and writing files
let path = require('upath'); // platform indepedent file paths

let outputRoot = process.argv.slice(2)[0];

// build the templates
let learn_template = ejs.compile(
  fs.readFileSync(
    path.joinSafe(__dirname, '/learn.ejs'),
    'utf8'
  )
);

let input = path.joinSafe(__dirname, 'learn.json');
let contents = JSON.parse(fs.readFileSync(input));

// write main page
fs.writeFile(
  path.joinSafe(outputRoot, '/index.hbs'),
  learn_template({ all: contents }),
  'utf8',
  function() {
    console.log('Created ' + outputRoot + '/index.hbs');
  }
);
