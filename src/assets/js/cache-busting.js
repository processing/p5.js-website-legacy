module.exports.register = function(Handlebars, options) {
  Handlebars.registerHelper('versionedAsset', function(options) {
    // requiring crypto library for hashing
    const crypto = require('crypto');
    // retrieving full path to the asset from the handlebar helper context
    const path = options.fn(this);
    const hash = crypto.createHash('sha256');
    let hashCode = "";
    hash.on('readable', () => {
      const data = hash.read();
      if (data) hashCode = data.toString('hex');
    })
    hash.write(readFromFile(path).toString());
    hash.end();
    hashCode = path + "?v=" + hashCode.substr(0, 6);
    return hashCode;
  });
};

// function that reads from file
function readFromFile(path) {
  // including fs library to read from file
  const fs = require('fs');
  // retrieving the asset that has to be read
  const fileName = path.split("/").pop();
  // creating a full path to the asset
  const ext = __dirname.substr(0, __dirname.length - 2).replace("/src", "/dist");
  console.log(ext + "css/" + fileName);
  return fs.readFileSync(ext + "css/" + fileName, function (err) { if (err) return 0 });
}