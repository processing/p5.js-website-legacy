module.exports.register = function(Handlebars, options) {
  Handlebars.registerHelper('i18n', function(context, options) {

    // First look in title, if not found, look in global.
    return this[this.language][this.title][context] || this[this.language][context];
  });
  Handlebars.registerHelper('root', function(context, options) {
    if (this.language === 'en') {
      return '';
    } else {
      return '/'+this.language;
    }
  });
};
