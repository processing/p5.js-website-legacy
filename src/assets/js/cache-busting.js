module.exports.register = function(Handlebars, options) {
  Handlebars.registerHelper('hash', function(context, options) {
    const crypto = require('crypto');
    const fs = require('fs');
    const hash = crypto.createHash('sha256');
    const file = fs.readFileSync('/assets/css/all.css', function (err) {
      if (err) return 0;
    });
    let hashCode = "0";
    hash.on('readable', () => {
      const data = hash.read();
      if (data) hashCode = data.toString('hex');
    })
    hash.write(file.toString());
    hash.end();
    return hashCode;
  });

};

// build fails, something is wrong with path
// probably the problem lies in the 