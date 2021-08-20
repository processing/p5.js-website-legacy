const path = require('path');
const fs = require('fs').promises;
const _ = require('lodash');
const util = require('util');
const glob = util.promisify(require('glob'));
const fluentConverter = require('./scripts/fluentConverter.js');
const pkg = require('../package.json');

module.exports = function(grunt) {
  grunt.registerTask('json-to-fluent', async function() {
    const done = this.async();
    const promises = [];

    try {
      // Parse data in en.json into FTL strings
      const fileData = await fs.readFile('./src/data/reference/en.json');
      const ftlStrs = fluentConverter.jsonToFtl(fileData);

      // Write each class of objects into its own FTL file
      _.each(ftlStrs, (str, name) => {
        promises.push(
          fs.writeFile(`./src/data/localization/en/${name}.ftl`, str)
        );
      });

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

    try {
      for (let language of languages) {
        // Skip creating en.json, this is handled by "generate_enJSON"
        if (language === 'en') continue;

        // Copy existing data in the localization JSON file.
        // This is done because the FTL files still cannot handle all the
        // entries available in the JSON file.
        const fileData = await fs.readFile(
          `./src/data/reference/${language}.json`
        );
        const data = JSON.parse(fileData);
        const newData = _.cloneDeep(data);

        // Change language code of following langauges because of
        // Pontoon's language code support
        if (language === 'zh-Hans') language = 'zh-CN';
        else if (language === 'hi') language = 'hi-IN';

        // Iterate over all ftl files and create JSON object out of them
        const files = await glob(`./src/data/localization/${language}/*.ftl`);
        for (const file of files) {
          if (file !== `./src/data/localization/${language}/root.ftl`) {
            const key = path.basename(file, '.ftl');
            const fileData = await fs.readFile(file, {
              encoding: 'utf8'
            });
            const jsonData = fluentConverter.ftlToObj(fileData);

            // The new data is assigned over the old data, keeping any old entry
            // that doesn't exist in FTL
            _.merge(newData[key], jsonData);
          }
        }

        // Change language code of following langauges because of
        // Pontoon's language code support
        if (language === 'zh-CN') language = 'zh-Hans';
        else if (language === 'hi-IN') language = 'hi';

        // Write data out to JSON files
        promises.push(
          fs.writeFile(
            `./src/data/reference/${language}.json`,
            JSON.stringify(newData, null, 2)
          )
        );
      }

      await Promise.all(promises);
      done();
    } catch (err) {
      done(err);
    }
  });
};
