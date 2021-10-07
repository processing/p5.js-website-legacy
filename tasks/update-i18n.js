const update_i18n = require('./scripts/updatei18nFiles.js');
const pkg = require('../package.json');

module.exports = function(grunt) {
  // runs the updateJSON() function from update18nFiles.js
  // is run by the update-translation-files workflow every time one of them is modified
  grunt.registerTask('update-json-i18n-files', function() {
    const JSONfiles_URL = 'src/data/reference/';
    const lang = pkg.languages.filter(v => v !== 'en');
    lang.forEach(langCode => {
      update_i18n.updateJSON(
        JSONfiles_URL + 'en.json',
        JSONfiles_URL + langCode + '.json'
      );
    });
  });

  // runs the updateYAML() function from update18nFiles.js
  // is run by the update-translation-files workflow every time one of them is modified
  grunt.registerTask('update-yaml-i18n-files', function() {
    const YAMLfiles_URL = 'src/data/';
    const lang = pkg.languages.filter(v => v !== 'en');
    lang.forEach(langCode => {
      update_i18n.updateYAML(
        YAMLfiles_URL + 'en.yml',
        YAMLfiles_URL + langCode + '.yml'
      );
    });
  });
};
