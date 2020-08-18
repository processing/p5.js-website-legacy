const fs = require('fs');
const flat = require('flat');

function fixParagraphStructure(originalJSONPath, translatedJSONPath) {
  const originalJSONFile = fs.readFileSync(originalJSONPath);
  const originalJSON = flat.flatten(JSON.parse(originalJSONFile));
  const translJSONFile = fs.readFileSync(translatedJSONPath);
  const translJSON = flat.flatten(JSON.parse(translJSONFile));
  const newTranslatedObj = {};

  for (var key in originalJSON) {
    if (key in translJSON) {
      newTranslatedObj[key] = translJSON[key];
    } else {
      let root = key.slice(0, key.length - 2);
      if (root.endsWith('description') && root + '.0' in translJSON) {
        newTranslatedObj[key] = '';
      } else {
        newTranslatedObj[key] = originalJSON[key];
      }
    }
  }

  fs.writeFileSync(
    translatedJSONPath,
    JSON.stringify(flat.unflatten(newTranslatedObj), undefined, 2)
  );
}
