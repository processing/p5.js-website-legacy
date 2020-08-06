/* 
  This script generates the en.json file with the data from the data.json.
  It's run by the Grunt task runner.
*/
function getenJSON() {
  var fs = require('fs');
  var data = fs.readFileSync('src/templates/pages/reference/data.json');
  var dataJSON = JSON.parse(data);
  var staticStrings = fs.readFileSync(
    'src/templates/pages/reference/staticStrings.json'
  );
  var staticStringsJSON = JSON.parse(staticStrings);
  var enJSON = {};

  // static strings
  for (var sstr in staticStringsJSON) {
    enJSON[sstr] = staticStringsJSON[sstr];
  }

  // modules
  for (var p5Module in dataJSON.modules) {
    if (p5Module !== 'p5.sound') {
      enJSON[p5Module] = p5Module;
    }
  }

  // classes: builds the p5 classes objects
  for (var p5Class in dataJSON.classes) {
    var entry = dataJSON['classes'][p5Class];
    var classObj = buildClassObj(entry);
    enJSON[entry.name] = classObj;
  }

  // classitems: adds methods and properties to their respective class object
  for (var p5ItemIdx in dataJSON.classitems) {
    var entry2 = dataJSON.classitems[p5ItemIdx];
    // only consider the items that have a name
    if (entry2.name) {
      var itemObj = buildItemObj(entry2);
      enJSON[entry2.class][entry2.name] = itemObj;
    }
  }

  fs.writeFileSync(
    'src/data/reference/en.json',
    JSON.stringify(enJSON, null, 2),
    err => {
      if (err) {
        console.error(err);
        return;
      }
    }
  );
}

function buildClassObj(p5Class) {
  var classObj = {};

  if (p5Class.description) {
    classObj['description'] = getParagraphs(p5Class.description);
  }

  if (p5Class.return) {
    classObj['returns'] = buildReturnObj(p5Class.return);
  }

  if (p5Class.params) {
    classObj['params'] = buildParamsObj(p5Class.params);
  }
  return classObj;
}

function buildItemObj(p5Item) {
  var itemObj = {};

  if (p5Item.description) {
    itemObj['description'] = getParagraphs(p5Item.description);
  }
  if (p5Item.return) {
    itemObj['returns'] = buildReturnObj(p5Item.return);
  }

  if (p5Item.itemtype === 'method') {
    if (p5Item.params) {
      itemObj['params'] = buildParamsObj(p5Item.params);
    }
    if (p5Item.overloads) {
      itemObj = getOverloads(p5Item, itemObj);
    }
  }
  return itemObj;
}

function buildReturnObj(returns) {
  return returns.type + ': ' + getText(returns.description);
}

function buildParamsObj(params) {
  var paramsObj = {};

  params.forEach(p => {
    var descr = p.type;
    if (p.description) {
      descr += ': ';
    }
    if ('optional' in p && p['optional']) {
      descr += ' (Optional) ';
    }
    descr += p.description;
    paramsObj[p.name] = getText(descr);
  });
  return paramsObj;
}

function getOverloads(p5Item, itemObj) {
  p5Item.overloads.forEach(o => {
    if (o.params) {
      var moreParams = buildParamsObj(o.params);
      if (itemObj.params) {
        for (var p in moreParams) {
          if (!(p in itemObj.params)) {
            itemObj['params'][p] = moreParams[p];
          }
        }
      } else {
        itemObj['params'] = moreParams;
      }
    }
  });
  return itemObj;
}

// returns the 'clean' version of the input text
function getText(str) {
  return str
    .trim()
    .replace(/<p>|<\/p>|<br>/g, '')
    .replace(/\n|\s+/g, ' ');
}

// returns an array containing the 'clean' versions of the text in the <p> tags of the input text
function getParagraphs(text) {
  return text
    .trim()
    .replace(/<\/p>|<br>/g, '')
    .replace(/\n|\s+/g, ' ')
    .split(/<p>/)
    .filter(x => x.length > 0);
}

module.exports = getenJSON;
