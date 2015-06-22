// i18n handlebar helper

module.exports.register = function(Handlebars, options) {
    Handlebars.registerHelper('i18n', function(context, options) {
        return this[this.language][context];
    });
};

