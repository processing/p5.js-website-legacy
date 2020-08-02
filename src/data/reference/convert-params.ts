import * as fs from "fs";
import * as path from "path";

const translationFilePath = path.join(__dirname, "es.json");

const translationFileContents = fs.readFileSync(translationFilePath, {
  encoding: "utf-8",
});

const translationAsJson: Object = JSON.parse(translationFileContents)["p5"];

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

const dataAsJson: Object = JSON.parse(dataFileContents)["classes"]["p5"];

for (const propName of Object.getOwnPropertyNames(translationAsJson)) {
  if (
    Object.getOwnPropertyNames(translationAsJson[propName]).includes("params")
  ) {
    const paramsValues = translationAsJson[propName]["params"];
    // const newParamsKeys = lookup keys somehow
    const paramsReference = dataAsJson[propName]["params"];
    // const newParams = zip em up
    const newParams = {};
    for (let index = 0; index < paramsValues.length; index++) {
      const pv = paramsValues[index];
      const pk = paramsReference[index][name];
      newParams[pk] = pv;
    }
    // replace
    translationAsJson[propName]["params"] = newParams;
  }
}
