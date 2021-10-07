/*
  * @name वस्तु 2
  * @description उदाहरण के लिए hbarragan द्वारा पोर्ट किया गया। कर्सर को इसके पार ले जाएँ
  * छवि ज्यामिति की गति और स्थिति को बदलने के लिए। कक्षा MRect
  * लाइनों के समूह को परिभाषित करता है।
  */

let r1, r2, r3, r4;

function setup() {
  createCanvas(710, 400);
  fill(255, 204);
  noStroke();
  r1 = new MRect(1, 134.0, 0.532, 0.1 * height, 10.0, 60.0);
  r2 = new MRect(2, 44.0, 0.166, 0.3 * height, 5.0, 50.0);
  r3 = new MRect(2, 58.0, 0.332, 0.4 * height, 10.0, 35.0);
  r4 = new MRect(1, 120.0, 0.0498, 0.9 * height, 15.0, 60.0);
}

function draw() {
  background(0);

  r1.display();
  r2.display();
  r3.display();
  r4.display();

  r1.move(mouseX - width / 2, mouseY + height * 0.1, 30);
  r2.move((mouseX + width * 0.05) % width, mouseY + height * 0.025, 20);
  r3.move(mouseX / 4, mouseY - height * 0.025, 40);
  r4.move(mouseX - width / 2, height - mouseY, 50);
}

class MRect {
  constructor(iw, ixp, ih, iyp, id, it) {
    this.w = iw; // सिंगल बार चौड़ाई
    this.xpos = ixp; // रेक्ट एक्सपोजिशन
    this.h = ih; // रेक्ट ऊंचाई
    this.ypos = iyp; // रेक्ट योपोजिशन
    this.d = id; // सिंगल बार दूरी
    this.t = it; // बार की संख्या
  }

  move(posX, posY, damping) {
    let dif = this.ypos - posY;
    if (abs(dif) > 1) {
      this.ypos -= dif / damping;
    }
    dif = this.xpos - posX;
    if (abs(dif) > 1) {
      this.xpos -= dif / damping;
    }
  }

  display() {
    for (let i = 0; i < this.t; i++) {
      rect(
        this.xpos + i * (this.d + this.w),
        this.ypos,
        this.w,
        height * this.h
      );
    }
  }
}
