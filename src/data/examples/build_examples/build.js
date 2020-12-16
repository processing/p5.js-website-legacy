var verbose = false;

// now load the modules we need
var ejs = require('ejs'); // library for turning .ejs templates into .html files
var fs = require('fs'); // node.js library for reading and writing files
var path = require('upath'); // platform independent file paths

// make sure EJS is configured to use curly braces for templates
// ejs.open = '<%';
// ejs.close = '%>';

var outputRoot = process.argv.slice(2)[0];

var spaceReg = new RegExp(' ', 'g');

// build the templates
var example_template = ejs.compile(
  fs.readFileSync(path.joinSafe(__dirname, '/example_template.ejs'), 'utf8')
);
var all_examples_template = ejs.compile(
  fs.readFileSync(
    path.joinSafe(__dirname, '/all_examples_template.ejs'),
    'utf8'
  )
);

var all = {};
var total = 0;
const languages = require('../../../../package.json').languages;

languages.forEach(function(lang) {
  buildSection(lang, function() {
    if (verbose) {
      console.log('all', all);
      console.log('total', total);
    }
  });
});

// write main page
fs.writeFile(
  path.joinSafe(outputRoot, '/index.hbs'),
  all_examples_template({ all: all, total: total }),
  'utf8',
  function() {
    console.log('Created ' + outputRoot + '/index.hbs');
  }
);

function buildSection(lang) {
  console.log('BUILD EXAMPLES' + lang);
  // get examples folders
  var inputRoot = path.joinSafe(__dirname, '/../', lang);
  var inputFolder = fs.readdirSync(inputRoot);

  if (lang === 'en') {
    var f = fs.readdirSync(outputRoot);
    f.forEach(function(file) {
      if (verbose) {
        console.log('file', file);
      }

      if (path.extname(file) === '.hbs') {
        fs.unlinkSync(path.joinSafe(outputRoot, file));
      }
    });
  }
  inputFolder.forEach(function(folder) {
    buildFolder(lang, inputRoot, outputRoot, folder);
  });
}

function findName(data) {
  var nameTagPos = data.indexOf('@name');
  if (nameTagPos === -1) {
    return '';
  }

  var startNamePos = nameTagPos + 6;
  var endNamePos = data.indexOf('\n', startNamePos);

  return data.substring(startNamePos, endNamePos);
}

function buildFolder(lang, inputRoot, outputRoot, folder) {
  var folderPath = path.joinSafe(inputRoot, folder);
  if (fs.statSync(folderPath).isDirectory()) {
    // Grab name after NN_
    var folderName = folder.substring(3);
    if (!all[folderName]) {
      all[folderName] = [];
    }

    var inputFiles = fs.readdirSync(folderPath).filter(function(f) {
      return path.extname(f) === '.js';
    });

    var i = 0;
    inputFiles.forEach(function(file) {
      var fileName = path.joinSafe(folderPath, file);
      var data = fs.readFileSync(fileName, 'utf8');
      var name = findName(data);

      if (lang === 'en') {
        var isMobile = folderName.indexOf('Mobile') >= 0;
        var relativeFileName = path.joinSafe(folder, file);
        var content = example_template({
          file: relativeFileName,
          mobileEx: isMobile
        });

        var shortName = name.replace(' and ', '/');
        name = name.replace(spaceReg, '-');
        var outName = (folderName + '-' + name).toLowerCase().replace('_', '-');
        outName = outName.replace(/[()]/g, '');
        var outputFile = outputRoot + outName + '.hbs';
        if (verbose) {
          console.log('outputFile', outputFile);
        }

        all[folderName].push({ en: shortName, link: outName + '.html' });

        fs.writeFile(outputFile, content, 'utf8', function() {
          console.log('Created ' + outputFile);
        });
        total++;
      } else {
        all[folderName][i][lang] = name;
        i++;
      }
    });
  }
}
