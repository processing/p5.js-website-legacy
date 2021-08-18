const {
  parse,
  serialize,
  Resource,
  Message,
  Identifier,
  Pattern,
  TextElement,
  Placeable
} = require('@fluent/syntax');
const _ = require('lodash');

function jsonToFtl(jsonStr) {
  const data = JSON.parse(jsonStr);

  const resources = {
    root: new Resource()
  };
  _.each(data, (v1, k1) => {
    if (_.isString(k1)) k1 = escapeIdentifier(k1);
    if (typeof v1 === 'string') {
      v1 = strToElements(v1);
      resources.root.body.push(
        new Message(new Identifier(k1), new Pattern([new TextElement(v1)]))
      );
    } else {
      const resource = new Resource();
      _.each(v1, (v2, k2) => {
        if (_.isString(k2)) k2 = escapeIdentifier(k2);
        if (typeof v2 === 'string') {
          v2 = strToElements(v2);
          const identifier = new Identifier(`${k2}`);
          resource.body.push(
            new Message(identifier, new Pattern([new TextElement(v2)]))
          );
        } else {
          _.each(v2, (v3, k3) => {
            if (_.isString(k3)) k3 = escapeIdentifier(k3);
            if (typeof v3 === 'string') {
              v3 = strToElements(v3);
              const identifier = new Identifier(`${k2}__${k3}`);
              resource.body.push(
                new Message(identifier, new Pattern([new TextElement(v3)]))
              );
            } else {
              _.each(v3, (v4, k4) => {
                if (_.isString(k4)) k4 = escapeIdentifier(k4);
                v4 = strToElements(v4);
                const identifier = new Identifier(`${k2}__${k3}__${k4}`);
                resource.body.push(
                  new Message(identifier, new Pattern([new TextElement(v4)]))
                );
              });
            }
          });
        }
      });
      resources[k1] = resource;
    }
  });

  const output = _.reduce(
    resources,
    (acc, resource, name) => {
      acc[name] = serialize(resource);
      return acc;
    },
    {}
  );

  return output;

  function strToElements(str) {
    let result = str;
    const curlyRegex = /([{}])/gm;
    result = result.replace(curlyRegex, '{"$1"}');

    return result;
  }

  function escapeIdentifier(identifier) {
    const leftBracketRegex = /(\()/gm;
    const rightBracketRegex = /(\))/gm;

    const result = identifier
      .replace(leftBracketRegex, '-_leftBracket_-')
      .replace(rightBracketRegex, '-_rightBracket_-');

    return result;
  }
}

function ftlToObj(ftlStr) {
  const resource = parse(ftlStr);
  const jsonData = {};

  for (const message of resource.body) {
    if (message.type === 'Junk') continue;

    const path = message.id.name.split('__').map(subpath => {
      return subpath
        .replace(/-_leftBracket_-/g, '(')
        .replace(/-_rightBracket_-/g, ')');
    });

    const text = message.value.elements.reduce((acc, element) => {
      if (element instanceof TextElement) {
        acc += element.value;
      } else if (element instanceof Placeable) {
        acc += element.expression.value;
      }
      return acc;
    }, '');

    const toStringIndex = path.indexOf('toString');
    if (
      toStringIndex >= 0 &&
      _.isFunction(_.get(jsonData, path.slice(0, toStringIndex + 1)))
    ) {
      if (Number.isFinite(parseInt(path[toStringIndex + 1]))) {
        _.set(jsonData, path.slice(0, toStringIndex + 1), []);
      } else {
        _.set(jsonData, path.slice(0, toStringIndex + 1), {});
      }
    }

    _.set(jsonData, path, text);
  }

  return jsonData;
}

module.exports = {
  jsonToFtl,
  ftlToObj
};
