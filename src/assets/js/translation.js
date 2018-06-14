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
  Handlebars.registerHelper('ifLowerCaseEquals', function(a, b, options){
    if(typeof a == "string") a = a.toLowerCase();
    if(typeof b == "string") b = b.toLowerCase();

    if(a == b){
      return options.fn(this);
    }else{
      return options.inverse(this);
    }
  });
};
