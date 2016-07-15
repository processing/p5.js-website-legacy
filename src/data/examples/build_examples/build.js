var verbose = false; 

// now load the modules we need
var ejs = require('ejs'),       // library for turning .ejs templates into .html files
    fs = require('fs'),         // node.js library for reading and writing files
    async = require('async');   // async module
 
// make sure EJS is configured to use curly braces for templates
// ejs.open = '<%';
// ejs.close = '%>';
 
var outputRoot = process.argv.slice(2)[0];

var metaReg = new RegExp('\\* ', 'g');
var spaceReg = new RegExp(' ', 'g');
 
// make sure we use the correct line-endings on Windows
var EOL = (process.platform === 'win32' ? '\r\n' : '\n')
 
// build the templates
var example_template = ejs.compile(fs.readFileSync(__dirname+"/example_template.ejs", 'utf8'));
var all_examples_template = ejs.compile(fs.readFileSync(__dirname+"/all_examples_template.ejs", 'utf8'));
 

var all = {};
var total = 0;
var languages = ['en', 'es']; //pend

languages.forEach(function(lang) { 
  buildSection(lang, function() {
    if (verbose) {
      console.log(all);
      console.log(total);
    }
  });
});

// write main page
fs.writeFile(outputRoot+'/index.hbs', all_examples_template({'all':all, 'total':total}), 'utf8');


function buildSection(lang) {
  console.log('BUILD EXAMPLES'+lang)
  // get examples folders
  var inputRoot = __dirname+'/../'+lang+'/';
  var inputFolder = fs.readdirSync(inputRoot);

  if (lang === 'en') {
    var f = fs.readdirSync(outputRoot);
    f.forEach(function(file) {
      if (verbose) console.log(file)
      if (file.indexOf('.hbs') !== -1) {
        fs.unlinkSync(outputRoot+file);
      }
    });
  }
  inputFolder.forEach(function(folder) {
    buildFolder(lang, inputRoot, outputRoot, folder);
  });
}

function buildFolder(lang, inputRoot, outputRoot, folder) { 
  if (fs.statSync(inputRoot+folder).isDirectory()) {

    var folderName = folder.substring(3);
    if (!(folderName in all)) {
      all[folderName] = [];
    }

    var i = 0;
    var inputFiles = fs.readdirSync(inputRoot+folder).filter(function(f) {
      return f.indexOf('.js') !== -1; });

    inputFiles.forEach(function(file) {
      var data = fs.readFileSync(inputRoot+folder+'/'+file, 'utf8');

      var startName = data.indexOf('@name')+6;
      var endName = data.indexOf("\n", startName);
      var name = startName !== 5 ? data.substring(startName, endName) : '';

      if (lang === 'en') {
        var isMobile = folderName.indexOf('Mobile') >= 0;
        var content = example_template({'file':folder+'/'+file, 'mobileEx':isMobile});

        var shortName = name.replace(' and ', '/');
        name = name.replace(spaceReg, '-');
        var outName = (folderName+'-'+name).toLowerCase().replace('_', '-');
        var outputFile = outputRoot+outName+'.hbs';
        if (verbose) console.log(outputFile);

        all[folderName].push({ en: shortName, link: outName+'.html'});

        fs.writeFile(outputFile, content, 'utf8');

        total++;
      } else {
        all[folderName][i][lang] = name;
        i++;
      }

    });
  }
}