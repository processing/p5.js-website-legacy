module.exports.register = function(Handlebars, options) {
  Handlebars.registerHelper('versionedAsset', function(options) {
    const crypto = require('crypto');
    const path = options.fn(this);
    const hash = crypto.createHash('sha256');
    let hashCode = "";
    hash.on('readable', () => {
      const data = hash.read();
      if (data) hashCode = data.toString('hex');
    })
    hash.write(concatFile(path).toString());
    hash.end();
    hashCode = path + "?v=" + hashCode.substr(0, 6);
    return hashCode;
  });
};

function concatFile(path) {
  const routes = {
    "all.css": ["main.css", "prism.css", "normalize.css"]
  }
  const fs = require('fs');
  const fileName = path.split("/").pop();
  const ext = __dirname.substr(0, __dirname.length - 2);
  let file = "";
  routes[fileName].forEach(f => {
    file += fs.readFileSync(ext + "css/" + f, function (err) { if (err) return 0 });
  })
  return file;
}