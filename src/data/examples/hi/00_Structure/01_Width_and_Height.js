/*
  * @name चौड़ाई और ऊंचाई
  * @description 'चौड़ाई' और 'ऊंचाई' चर में शामिल हैं
  * createCanvas () में परिभाषित डिस्प्ले विंडो की चौड़ाई और ऊंचाई
  * समारोह।
  */
function setup() {
  createCanvas(720, 400);
}

function draw() {
  background(127);
  noStroke();
  for (let i = 0; i < height; i += 20) {
    fill(129, 206, 15);
    rect(0, i, width, 10);
    fill(255);
    rect(i, 0, 10, height);
  }
}
