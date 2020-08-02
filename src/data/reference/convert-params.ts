import * as fs from "fs";
import * as path from "path";

const translationFilePath = path.join(__dirname, "es.json");

const translationFileContents = fs.readFileSync(translationFilePath, {
  encoding: "utf-8",
});

const translationAsJson: Object = JSON.parse(translationFileContents)["p5"];

// src/templates/pages/reference/data.json
const dataFilePath = path.join(
  __dirname,
  "..",
  "..",
  "templates",
  "pages",
  "reference",
  "data.json"
);

const dataFileContents = fs.readFileSync(dataFilePath, {
  encoding: "utf-8",
});

const classItemsAsJson: Array<Object> = JSON.parse(dataFileContents)["classitems"];
const classesAsJsonRaw: Object = JSON.parse(dataFileContents)["classes"];
const classesAsJson: Array<Object> = []
for (const classEntry in classesAsJsonRaw) {
  classesAsJson.push({...classesAsJsonRaw[classEntry], name: classEntry})
}


for (const propName of Object.getOwnPropertyNames(translationAsJson)) {
  if (
    Object.getOwnPropertyNames(translationAsJson[propName]).includes("params")
  ) {
    const paramsValues = translationAsJson[propName]["params"];
    // const newParamsKeys = lookup keys somehow
    const dataEntry = classItemsAsJson.find((el) => el["name"] === propName) ?? classesAsJson.find((el) => el["name"] === propName);
    if (!dataEntry) {
      console.warn(`no item with name: ${propName}`);
      continue;
    }

    const overloads = dataEntry["overloads"]?.sort((a, b) => a["params"].length < b["params"].length)
    // console.debug(overloads)
    const paramsWrapper = dataEntry["params"] ? dataEntry :
      (overloads?.find((el) => el["params"].length === paramsValues.length))
      ?? overloads?.[0]
    // console.debug(paramsWrapper)
    const paramsInfo = paramsWrapper?.["params"]
    // console.debug(paramsInfo)

    if (!paramsInfo) {
      console.warn(`no params info for ${propName}`);
      // console.debug(dataEntry)
    }
    // const newParams = zip em up
    const newParams = {};
    for (let index = 0; index < paramsValues.length; index++) {
      // console.log(`${propName}-${index}`)
      const pv = paramsValues[index];
      const pk = paramsInfo?.[index]?.["name"] ?? `UNKNOWN-PARAM-${index+1}`;
      newParams[pk] = pv;
    }
    // replace
    translationAsJson[propName]["params"] = newParams;
  }
}

console.log("writing new file...");
fs.writeFileSync("converted.json", JSON.stringify(translationAsJson));
console.log("done!");

