/*
  * @name दिशात्मक
  * @frame 710,400
  * @description प्रकाश की दिशा बदलने के लिए माउस ले जाएँ।
  * दिशात्मक प्रकाश एक दिशा से आता है और हिट करने पर मजबूत होता है
  * सतह वर्गाकार और कमजोर अगर यह एक कोमल कोण से टकराती है। मारने के बाद
  * सतह, एक दिशात्मक प्रकाश सभी दिशाओं में बिखरता है।
  */
const radius = 200;

function setup() {
  createCanvas(710, 400, WEBGL);
  noStroke();
  fill(200);
}

function draw() {
  noStroke();
  background(0);
  const dirY = (mouseY / height - 0.5) * 4;
  const dirX = (mouseX / width - 0.5) * 4;
  directionalLight(204, 204, 204, dirX, dirY, 1);
  translate(-1.5 * radius, 0, 0);
  sphere(radius);
  translate(3 * radius, 0, 0);
  sphere(radius);
}
