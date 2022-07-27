/*
  * @name संतृप्ति
  * @description संतृप्ति रंग की ताकत या शुद्धता है और
  * रंग के अनुपात में ग्रे की मात्रा का प्रतिनिधित्व करता है। एक "संतृप्त"
  * रंग शुद्ध होता है और "असंतृप्त" रंग में ग्रे का एक बड़ा प्रतिशत होता है।
  * इसकी संतृप्ति को बदलने के लिए कर्सर को प्रत्येक पट्टी पर लंबवत ले जाएँ।
  */
const barWidth = 20;
let lastBar = -1;

function setup() {
  createCanvas(720, 400);
  colorMode(HSB, width, height, 100);
  noStroke();
}

function draw() {
  let whichBar = mouseX / barWidth;
  if (whichBar !== lastBar) {
    let barX = whichBar * barWidth;
    fill(barX, mouseY, 66);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
}
