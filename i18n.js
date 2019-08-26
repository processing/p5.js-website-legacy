// This file will automatically add entries that needs to be
// tracked for translation in i18n-tracking.yml file.
//
// It should be run as part of the build tool and changes to
// source files (en.yml) should be committed before translating
// and removing entries in the i18n-tracking.yml file.

const fs = require('fs');
const yaml = require('js-yaml');
const _ = require('lodash');
const git = require('simple-git/promise');

const pkg = require('./package.json');

const enSrcFile = 'src/data/en.yml';

function parseDiff(diff) {
  return new Promise((resolve, reject) => {
    const changes = [];
    let [, lineNum] = diff.match(/@@ -(\d+),.*@@/);
    lineNum = parseInt(lineNum, 10) - 1;
    let lines = diff.split('\n');
    const startAt = lines.findIndex(line => line.startsWith('@@'));
    lines = lines.slice(startAt);
    lines.forEach((line, index) => {
      if (line.startsWith('+')) {
        changes.push([lineNum, line.replace(/^\+/, '')]);
      }
      lineNum++;
    });
    writeTracker(enSrcFile, changes, resolve, reject);
  });
}

var task = function(done) {
  const repo = git();
  repo
    .status()
    .then(data => {
      if (data.modified.includes(enSrcFile)) {
        return repo.diff(['-p', '--cached', enSrcFile]);
      }
      return Promise.reject(`${enSrcFile} file was not modified.`);
    })
    .then(parseDiff)
    .then(done)
    .catch(e => {
      done();
    });
};

function writeTracker(path, changes, resolve, reject) {
  fs.readFile('./i18n-tracking.yml', 'utf-8', (err, data) => {
    if (err) reject(err);

    const dest = {};
    const lang = pkg.languages.filter(v => v !== 'en');
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
      if (err) reject(err);
      resolve();
    });
  });
}

module.exports = task;
