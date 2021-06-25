/*
  * @name इंस्टेंटेशन
  * @description एक p5 इंस्टेंस बनाएं, जो सभी वेरिएबल को बनाए रखता है
  * आपके पेज के वैश्विक दायरे से बाहर।
  */
let sketch = function(p) {
  let x = 100;
  let y = 100;

  p.setup = function() {
    p.createCanvas(700, 410);
  };

  p.draw = function() {
    p.background(0);
    p.fill(255);
    p.rect(x, y, 50, 50);
  };
};

let myp5 = new p5(sketch);

// Compare to "global mode"
// let x = 100;
// let y = 100;

// function setup() {
//   createCanvas(200,200);
// }

// function draw() {
//   background(0);
//   fill(255);
//   ellipse(x,y,50,50);
// }
