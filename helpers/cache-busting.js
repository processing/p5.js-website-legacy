module.exports.register = function(Handlebars, options) {
  Handlebars.registerHelper('versionedAsset', function(options) {
    // node libraries
    const crypto = require('crypto');
    const path = require('path');
    const fs = require('fs');
    const filePath = options.fn(this);
    const hash = crypto.createHash('sha256');
    // creating full path from the root dir to the file
    const fullPath = path.join(__dirname, '..', 'dist', filePath);
    let hashCode = '';
    hash.on('readable', () => {
      const data = hash.read();
      if (data) hashCode = data.toString('hex');
    });
    hash.write(fs.readFileSync(fullPath, {
        encoding: 'utf8'
    }));
    hash.end();
    // creating a version string from first 6 hash characters
    hashCode = '/' + filePath + '?v=' + hashCode.substr(0, 6);
    return hashCode;
  });
};