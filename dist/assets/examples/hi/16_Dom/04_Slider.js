/*
  * @name स्लाइडर
  * @description आपको शामिल करना होगा
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।<br><br>
  * पृष्ठभूमि के आर, जी, बी मूल्यों को नियंत्रित करने के लिए स्लाइडर्स को स्थानांतरित करें।
  */
let rSlider, gSlider, bSlider;

function setup() {
  // create canvas
  createCanvas(710, 400);
  textSize(15);
  noStroke();

  // create sliders
  rSlider = createSlider(0, 255, 100);
  rSlider.position(20, 20);
  gSlider = createSlider(0, 255, 0);
  gSlider.position(20, 50);
  bSlider = createSlider(0, 255, 255);
  bSlider.position(20, 80);
}

function draw() {
  const r = rSlider.value();
  const g = gSlider.value();
  const b = bSlider.value();
  background(r, g, b);
  text('red', rSlider.x * 2 + rSlider.width, 35);
  text('green', gSlider.x * 2 + gSlider.width, 65);
  text('blue', bSlider.x * 2 + bSlider.width, 95);
}
