const fs = require('fs');
const flat = require('flat');
const yaml = require('js-yaml');

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

  const newJSON = updatei18nObj(
    flat.flatten(originalJSON, { delimiter: '/' }),
    flat.flatten(translJSON, { delimiter: '/' })
  );

  fs.writeFileSync(
    translatedJSONPath,
    JSON.stringify(flat.unflatten(newJSON, { delimiter: '/' }), undefined, 2)
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
