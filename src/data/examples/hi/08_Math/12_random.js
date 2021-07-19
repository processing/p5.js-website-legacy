/*
  * @name रैंडम
  * @description रैंडम नंबर इस इमेज का आधार बनाते हैं।
  * हर बार प्रोग्राम लोड होने पर परिणाम अलग होता है।
  */
function setup() {
  createCanvas(710, 400);
  background(0);
  strokeWeight(20);
  frameRate(2);
}

function draw() {
  for (let i = 0; i < width; i++) {
    let r = random(255);
    stroke(r);
    line(i, 0, i, height);
  }
}
