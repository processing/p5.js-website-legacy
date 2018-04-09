// This file will automatically add entries that needs to be
// tracked for translation in i18n-tracking.yml file.
//
// It should be run as part of the build tool and changes to
// source files (en.yml) should be committed before translating
// and removing entries in the i18n-tracking.yml file.

var Git = require('nodegit');
var fs = require('fs');
var yaml = require('js-yaml');
var _ = require('lodash');

var lang = ['es', 'zh-Hans'];

Git.Repository.open('./')
  .then(repo => {
    return Git.Diff.indexToWorkdir(repo);
  })
  .then(diff => {
    return diff.patches();
  })
  .then(patches => {
    patches.forEach(function(patch) {
      // Each patch represent a file
      if (patch.oldFile().path() === 'src/data/en.yml') {
        patch
          .hunks()
          .then(hunks => {
            var hunksPromises = [];
            hunks.forEach(function(hunk) {
              hunksPromises.push(hunk.lines());
            });

            return Promise.all(hunksPromises);
          })
          .then(hunks => {
            var changes = [];

            hunks.forEach(function(lines) {
              lines.forEach(function(line) {
                // If a line has changed, add it to i18n-tracking.json
                var changedLineNumber = 0;
                var changedLine = '';

                if (String.fromCharCode(line.origin()) === '+') {
                  changedLineNumber = line.newLineno();
                  changedLine = line.content().trim();
                  changes.push([changedLineNumber, changedLine]);
                }
              });
            });

            writeTracker(patch.oldFile().path(), changes);
          });
      }
    });
  });

function writeTracker(path, changes) {
  var dest = {};

  // Read once, write once
  fs.readFile('./i18n-tracking.yml', 'utf-8', (err, data) => {
    if (err) throw err;

    lang.forEach(langCode => {
      dest[langCode] = {};
      dest[langCode][path] = {};
      var newObj = {};
      newObj[path] = {};
      var currentObj = yaml.safeLoad(data) ? yaml.safeLoad(data)[langCode] : {};

      changes.forEach(change => {
        var i = `line ${change[0]}`;
        newObj[path][i] = change[1].split(':')[0];
      });

      var intersect = _.intersection(
        _.keys(currentObj[path]),
        _.keys(newObj[path])
      );
      var diffAB = _.difference(_.keys(currentObj[path]), _.keys(newObj[path]));
      var diffBA = _.difference(_.keys(newObj[path]), _.keys(currentObj[path]));

      intersect.forEach(line => {
        dest[langCode][path][line] = newObj[path][line];
      });
      diffAB.forEach(line => {
        dest[langCode][path][line] = currentObj[path][line];
      });
      diffBA.forEach(line => {
        dest[langCode][path][line] = newObj[path][line];
      });
    });
    var dump = yaml.safeDump(dest, {
      styles: {
        '!!null': 'canonical'
      },
      sortKeys: false
    });

    fs.writeFile('./i18n-tracking.yml', dump, (err, res) => {
      if (err) throw err;
    });
  });
}
