 
// now load the modules we need
var ejs = require('ejs'),       // library for turning .ejs templates into .html files
    fs = require('fs'),         // node.js library for reading and writing files
    rimraf = require('rimraf'), // rm -rf helper
    async = require('async');   // async module
 
// make sure EJS is configured to use curly braces for templates
// ejs.open = '<%';
// ejs.close = '%>';
 


var metaReg = new RegExp('\\* ', 'g');
var spaceReg = new RegExp(' ', 'g');
 
// make sure we use the correct line-endings on Windows
var EOL = (process.platform === 'win32' ? '\r\n' : '\n')
 
// build the templates
var example_template = ejs.compile(fs.readFileSync("example_template.ejs", 'utf8'));
var mobile_example_template = ejs.compile(fs.readFileSync("mobile_example_template.ejs", 'utf8'));
var all_examples_template = ejs.compile(fs.readFileSync("all_examples_template.ejs", 'utf8'));
 
var all = { examples: [], demos: [] };
var total = { examples: 0, demos: 0 };


// build examples
// async.forEachSeries(examplesInputFolders, function(folder, cb0) {
//   buildFolder(examplesInputRoot, examplesOutputRoot, folder, cb0);
// }, function(callback) {
//   // build demos
//   // async.forEachSeries(inputFolders, function(folder, cb0) {
//   //   buildFolder(folder, cb0);
//   // }, function(callback) {
//   //   console.log(all);
//   //   // write main page
//   //   fs.writeFile('../index.php', all_examples_template({'all':all, 'total':total}), 'utf8');
//   // });
// });

buildSection('examples', function() {
  buildSection('demos', function() {
    console.log(all);
    console.log(total);
    // write main page
    fs.writeFile('../index.php', all_examples_template({'all':all, 'total':total}), 'utf8');
  })
})

function buildSection(type, callback) {
  // get examples folders
  var inputRoot = '../'+type+'_src/';
  var outputRoot = '../'+type+'/';
  var inputFolder = fs.readdirSync(inputRoot);
  var f = fs.readdirSync(outputRoot);
  f.forEach(function(file) {
    console.log(file)
    if (file.indexOf('.php') !== -1) {
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
    console.log(type)
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
            content = mobile_example_template({'type':type, 
                                            'formattedType':formattedType, 
                                            'name':name, 
                                            'desc':desc, 
                                            'js':code, 
                                            'file':inputRoot+folder+'/'+file});
          
          //Otherwise use regular example template
          } else {
            content = example_template({'type':type, 
                                            'formattedType':formattedType, 
                                            'name':name, 
                                            'desc':desc, 
                                            'js':code, 
                                            'file':inputRoot+folder+'/'+file});
          }
          var outputFile = outputRoot+folderName+'_'+name.replace(spaceReg, '_')+'.php';
          console.log(outputFile);

          var shortName = name.replace(' and ', '/');
          all[type][folderName].push([shortName, outputFile.substring(3)]);

          fs.writeFile(outputFile, content, 'utf8');

          console.log('d')
          total[type]++;
          cb1();

        });
      } else {
        cb1();
      }
    }, function(callback) {
      console.log('all done')
      cb0();
    });
  } else {
    cb0();
  }
}