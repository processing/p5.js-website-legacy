var language = "en";

function toEn() {
  console.log(language);
  language = "en";
}

function toEs() {
  console.log(language);
  language = "es";
}

module.exports.register = function(Handlebars) {
    Handlebars.registerHelper('i18n', function(context) {
          return this[language][context];
    });
};

// module.exports.register = function(Handlebars, options) {
//     Handlebars.registerHelper('i18n', function(context, options) {
//         return this[this.language][context];
//     });
// };




