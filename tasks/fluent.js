const path = require('path');
const fs = require('fs').promises;
const fse = require('fs-extra');
const _ = require('lodash');
const util = require('util');
const glob = util.promisify(require('glob'));
const fluentConverter = require('./scripts/fluentConverter.js');
const pkg = require('../package.json');

module.exports = function(grunt) {
  grunt.registerTask('json-to-fluent', async function() {
    const done = this.async();
    const languages = pkg.languages;
    const promises = [];

    try {
      for (const language of languages) {
        const fileData = await fs.readFile(
          `./src/data/reference/${language}.json`
        );
        const ftlStrs = fluentConverter.jsonToFtl(fileData);
        fse.mkdirpSync(`./src/data/localization/${language}/`);
        _.each(ftlStrs, (str, name) => {
          promises.push(
            fs.writeFile(`./src/data/localization/${language}/${name}.ftl`, str)
          );
        });
      }

      await Promise.all(promises);
      done();
    } catch (err) {
      done(err);
    }
  });

  grunt.registerTask('fluent-to-json', async function() {
    const done = this.async();
    const languages = pkg.languages;
    const promises = [];
    const assert = require('assert');

    try {
      for (const language of languages) {
        const fileData = await fs.readFile(
          `./src/data/reference/${language}.json`
        );
        const data = JSON.parse(fileData);
        const newData = _.cloneDeep(data);

        const files = await glob(`./src/data/localization/${language}/*.ftl`);
        for (const file of files) {
          if (file !== `./src/data/localization/${language}/root.ftl`) {
            const key = path.basename(file, '.ftl');
            const fileData = await fs.readFile(file, {
              encoding: 'utf8'
            });
            const jsonData = fluentConverter.ftlToObj(fileData);

            _.assign(newData[key], jsonData);
          }
        }

        assert.deepStrictEqual(newData, data);
      }

      // Write data out to JSON files
      // Will be implemented when confirm there will be no data loss
      console.log('File write skipped.');
      done();
    } catch (err) {
      done(err);
    }
  });
};
