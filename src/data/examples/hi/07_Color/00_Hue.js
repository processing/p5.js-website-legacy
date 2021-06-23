/*
  * @name ह्यू
  * @description Hue वह रंग है जो a . से परावर्तित या प्रसारित होता है
  * वस्तु और आमतौर पर रंग के नाम के रूप में जाना जाता है (लाल, नीला,
  * पीला, आदि।) रंग बदलने के लिए कर्सर को प्रत्येक बार पर लंबवत ले जाएं।
  */
const barWidth = 20;
let lastBar = -1;

function setup() {
  createCanvas(720, 400);
  colorMode(HSB, height, height, height);
  noStroke();
  background(0);
}

function draw() {
  let whichBar = mouseX / barWidth;
  if (whichBar !== lastBar) {
    let barX = whichBar * barWidth;
    fill(mouseY, height, height);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
}
