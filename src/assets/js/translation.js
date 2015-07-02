// var language = "es"; 

// function toEn() {
//   language = "en";
//   console.log(language);
// }

// function toEs() {
//   language = "es";
//   console.log(language);
// }

// module.exports.register = function(Handlebars) {
//     Handlebars.registerHelper('i18n', function(context) {
//           return this[language][context];
//     });
// };

module.exports.register = function(Handlebars, options) {
    Handlebars.registerHelper('i18n', function(context, options) {
          return this[this.language][this.title][context];
    });
};



