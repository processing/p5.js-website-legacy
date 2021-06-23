/*
  * @name दूरी 2डी
  * @description छवि पर माउस को अस्पष्ट करने के लिए ले जाएं
  * और मैट्रिक्स प्रकट करें। माउस से दूरी मापता है
  * प्रत्येक सर्कल के लिए और आनुपातिक रूप से आकार निर्धारित करता है।
  */
let max_distance;

function setup() {
  createCanvas(710, 400);
  noStroke();
  max_distance = dist(0, 0, width, height);
}

function draw() {
  background(0);

  for (let i = 0; i <= width; i += 20) {
    for (let j = 0; j <= height; j += 20) {
      let size = dist(mouseX, mouseY, i, j);
      size = (size / max_distance) * 66;
      ellipse(i, j, size, size);
    }
  }
}
