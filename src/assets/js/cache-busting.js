module.exports.register = function(Handlebars, options) {
  Handlebars.registerHelper('versionedAsset', function(options) {
    // requiring crypto library for hashing
    const crypto = require('crypto');
    // retrieving full path to the asset from the handlebar helper context
    const path = options.fn(this);
    const hash = crypto.createHash('sha256');
    const fs = require('fs');
    const ext = __dirname.substr(0, __dirname.length - 3).replace("/src", "/dist");
    let hashCode = "";
    hash.on('readable', () => {
      const data = hash.read();
      if (data) hashCode = data.toString('hex');
    })
    hash.write(fs.readFileSync(ext + path, function (err) { if (err) return 0 }).toString());
    hash.end();
    hashCode = "/assets" + path + "?v=" + hashCode.substr(0, 6);
    return hashCode;
  });
};