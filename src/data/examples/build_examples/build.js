var verbose = false; 

// now load the modules we need
var ejs = require('ejs'),       // library for turning .ejs templates into .html files
    fs = require('fs'),         // node.js library for reading and writing files
    rimraf = require('rimraf'), // rm -rf helper
    async = require('async');   // async module
 
// make sure EJS is configured to use curly braces for templates
// ejs.open = '<%';
// ejs.close = '%>';
 
 var ex_dest = process.argv.slice(2)[0];

var metaReg = new RegExp('\\* ', 'g');
var spaceReg = new RegExp(' ', 'g');
 
// make sure we use the correct line-endings on Windows
var EOL = (process.platform === 'win32' ? '\r\n' : '\n')
 
// build the templates
var example_template = ejs.compile(fs.readFileSync(__dirname+"/example_template.ejs", 'utf8'));
var mobile_example_template = ejs.compile(fs.readFileSync(__dirname+"/mobile_example_template.ejs", 'utf8'));
var all_examples_template = ejs.compile(fs.readFileSync(__dirname+"/all_examples_template.ejs", 'utf8'));
 
var all = { examples: [], demos: [] };
var total = { examples: 0, demos: 0 };


buildSection('examples', function() {
  buildSection('demos', function() {
    if (verbose) {
      console.log(all);
      console.log(total);
    }
    // write main page
    fs.writeFile(ex_dest+'/index.hbs', all_examples_template({'all':all, 'total':total}), 'utf8');
  })
})

function buildSection(type, callback) {
  // get examples folders
  var inputRoot = __dirname+'/../'+type+'_src/';
  var outputRoot = ex_dest+'/'+type+'/';
  var inputFolder = fs.readdirSync(inputRoot);
  var f = fs.readdirSync(outputRoot);
  f.forEach(function(file) {
    if (verbose) console.log(file)
    if (file.indexOf('.hbs') !== -1) {
      fs.unlinkSync(outputRoot+file);
    }
  });
  async.forEachSeries(inputFolder, function(folder, cb0) {
    buildFolder(type, inputRoot, outputRoot, folder, cb0);
  }, callback);
}

function buildFolder(type, inputRoot, outputRoot, folder, cb0) { 
  if (fs.statSync(inputRoot+folder).isDirectory()) {

    folderName = folder.substring(3);
    if (verbose) console.log(type)
    all[type][folderName] = [];

    var inputFiles = fs.readdirSync(inputRoot+folder);
    
    async.forEachSeries(inputFiles, function(file, cb1) {
      if (file.indexOf('.js') !== -1) {
        fs.readFile(inputRoot+folder+'/'+file, 'utf8', function (err,data) {
          if (err) {
            return console.log(err);
          }

          // make an array to store our output

          var startName = data.indexOf("@name")+6;
          var endName = data.indexOf("\n", startName);

          var startDesc = data.indexOf("@description")+13;
          var endDesc = data.indexOf("*/", startDesc);

          var name = startName !== 5 ? data.substring(startName, endName) : '';
          
          var desc = startDesc !== 12 ? data.substring(startDesc, endDesc) : '';
          desc = desc.replace(metaReg, '');

          var code = data.substring(endDesc+2);

          var formattedType = type.charAt(0).toUpperCase() + type.substring(1);


          var content;
          
          //If this is for Mobile examples, use mobile_example_template
          if (folderName.indexOf('Mobile') >= 0) {
            // content = mobile_example_template({'type':type, 
            //                                 'formattedType':formattedType, 
            //                                 'name':name, 
            //                                 'desc':desc, 
            //                                 'js':code, 
            //                                 'folder': folderName,
            //                                 'file':inputRoot+folder+'/'+file});
          
          //Otherwise use regular example template
          } else {
            content = example_template({'type':type, 
                                            'formattedType':formattedType, 
                                            'name':name, 
                                            'desc':desc, 
                                            'js':code, 
                                            'folder': folderName,
                                            'file':'{{assets}}/examples/'+type+'_src/'+folder+'/'+file});
          }
          var shortName = name.replace(' and ', '/');
          name = name.replace(spaceReg, '-');
          var outName = (folderName+'-'+name).toLowerCase();
          var outputFile = outputRoot+outName+'.hbs';
          if (verbose) console.log(outputFile);

          all[type][folderName].push([shortName, outName+'.html']);

          fs.writeFile(outputFile, content, 'utf8');

          total[type]++;
          cb1();

        });
      } else {
        console.log('built examples')
        cb1();
      }
    }, function(callback) {
      cb0();
    });
  } else {
    cb0();
  }
}