/*
  * @name आसान
  * @description माउस को स्क्रीन और सिंबल पर ले जाएं
  * का पालन करेंगे। एनीमेशन के प्रत्येक फ्रेम को खींचने के बीच,
  * कार्यक्रम की स्थिति के बीच अंतर की गणना करता है
  * प्रतीक और कर्सर। यदि दूरी 1 पिक्सेल से बड़ी है,
  * प्रतीक अपनी धारा से कुछ दूरी (0.05) को आगे बढ़ाता है
  * कर्सर की ओर स्थिति।
  */
let x = 1;
let y = 1;
let easing = 0.05;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(237, 34, 93);
  let targetX = mouseX;
  let dx = targetX - x;
  x += dx * easing;

  let targetY = mouseY;
  let dy = targetY - y;
  y += dy * easing;

  ellipse(x, y, 66, 66);
}
