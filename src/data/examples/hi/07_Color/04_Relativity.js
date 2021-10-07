/*
  * @name सापेक्षता
  * @description प्रत्येक रंग अन्य रंगों के संबंध में माना जाता है। चोटी
  * और नीचे की सलाखों में प्रत्येक में समान घटक रंग होते हैं, लेकिन एक अलग
  * डिस्प्ले ऑर्डर के कारण अलग-अलग रंग अलग-अलग दिखाई देते हैं।
  */
let a, b, c, d, e;

function setup() {
  createCanvas(710, 400);
  noStroke();
  a = color(165, 167, 20);
  b = color(77, 86, 59);
  c = color(42, 106, 105);
  d = color(165, 89, 20);
  e = color(146, 150, 127);
  noLoop(); // केवल एक बार ड्रा करें
}

function draw() {
  drawBand(a, b, c, d, e, 0, width / 128);
  drawBand(c, a, d, b, e, height / 2, width / 128);
}

function drawBand(v, w, x, y, z, ypos, barWidth) {
  let num = 5;
  let colorOrder = [v, w, x, y, z];
  for (let i = 0; i < width; i += barWidth * num) {
    for (let j = 0; j < num; j++) {
      fill(colorOrder[j]);
      rect(i + j * barWidth, ypos, barWidth, height / 2);
    }
  }
}
