const fs = require('fs');
const flat = require('flat');
const yaml = require('js-yaml');
const mapObject = require('map-obj');

// updates the content of the translated i18n files for the Reference
// so that they're up to date with the English version (en.json)
function updateJSON(originalJSONPath, translatedJSONPath) {
  const originalJSONFile = fs.readFileSync(originalJSONPath);
  const originalJSON = JSON.parse(originalJSONFile);
  const translJSONFile = fs.readFileSync(translatedJSONPath);

  let translJSON;
  try {
    translJSON = JSON.parse(translJSONFile);
  } catch (error) {
    translJSON = {};
  }

  // An underscore is added (and later on removed) to every key as prefix
  // to avoid conflicts between key names and JavaScript native methods
  // (workaround for https://github.com/processing/p5.js-website/issues/1063).
  const updatedJSON = updatei18nObj(
    flat.flatten(originalJSON, { delimiter: '/', safe: true , transformKey: function(key){
      return '_' + key;
    }}),
    flat.flatten(translJSON, { delimiter: '/', safe: true , transformKey: function(key){
      return '_' + key;
    }})
  );

  const newJSON = flat.unflatten(updatedJSON, { delimiter: '/', safe: true})

  fs.writeFileSync(
    translatedJSONPath,
    JSON.stringify(mapObject(newJSON, (key, value) => [key.substring(1), value], {deep: true}), undefined, 2)
  );
}

// updates the content of the translated i18n files for the Website
// so that they're up to date with the English version (en.yml)
function updateYAML(originalYAMLPath, translatedYAMLPath) {
  const originalYAMLFile = fs.readFileSync(originalYAMLPath, 'utf8');
  const originalYAML = yaml.safeLoad(originalYAMLFile);
  const translYAMLFile = fs.readFileSync(translatedYAMLPath, 'utf8');
  const translYAML = yaml.safeLoad(translYAMLFile);

  const newYAML = updatei18nObj(
    flat.flatten(originalYAML, { delimiter: '/' }),
    flat.flatten(translYAML, { delimiter: '/' })
  );

  fs.writeFileSync(
    translatedYAMLPath,
    yaml.safeDump(flat.unflatten(newYAML, { delimiter: '/' }))
  );
}

// ** using the original English text as default value **
// merges the keys of the originalObj with the ones of the translatedObj,
// in order to keep the translatedObj updated
function updatei18nObj(originalObj, translatedObj) {
  // if the translated object is empty
  if (!translatedObj) {
    return originalObj;
  }
  const newTranslatedObj = {};
  for (var key in originalObj) {
    if (key in translatedObj) {
      newTranslatedObj[key] = translatedObj[key];
    } else {
      newTranslatedObj[key] = originalObj[key];
    }
  }
  return newTranslatedObj;
}

module.exports = {
  updateJSON,
  updateYAML
};
