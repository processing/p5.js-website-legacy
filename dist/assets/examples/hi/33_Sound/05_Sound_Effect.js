/*
  * @name ध्वनि प्रभाव
  * @description <p>माउस को सर्कल के अंदर क्लिक करने पर ध्वनि प्रभाव चलाएं।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
  */
// डैनियल शिफमैन द्वारा लर्निंग प्रोसेसिंग से अनुकूलित from
// http://www.learningprocessing.com
// डोरबेल का नमूना Corsica_S द्वारा freesound.org के माध्यम से,
// क्रिएटिव कॉमन्स BY 3.0

// एक "डोरबेल" (वास्तव में एक बटन) का वर्णन करने के लिए एक वर्ग
class Doorbell {
  constructor(x_, y_, r_) {
    // स्थान और आकार
    this.x = x_;
    this.y = y_;
    this.r = r_;
  }
  // दरवाजे की घंटी के अंदर एक बिंदु है? (माउस रोलओवर आदि के लिए प्रयुक्त)
  contains(mx, my) {
    return dist(mx, my, this.x, this.y) < this.r;
  }

  // डोरबेल दिखाएं (हार्डकोडेड रंग, बेहतर किया जा सकता है)
  display(mx, my) {
    if (this.contains(mx, my)) {
      fill(100);
    } else {
      fill(175);
    }
    stroke(0);
    strokeWeight(4);
    ellipseMode(RADIUS);
    ellipse(this.x, this.y, this.r, this.r);
  }
}

// एक ध्वनि फ़ाइल वस्तु
let dingdong;

// एक डोरबेल ऑब्जेक्ट (जो ध्वनि को ट्रिगर करेगा)
let doorbell;

function setup() {
  createCanvas(200, 200);

   // ध्वनि फ़ाइल लोड करें।
   // हमने एक एमपी3 और एक ओजीजी संस्करण दोनों को शामिल किया है।
  soundFormats('mp3', 'ogg');
  dingdong = loadSound('assets/doorbell.mp3');

  // एक नया डोरबेल बनाएं
  doorbell = new Doorbell(width / 2, height / 2, 32);
}

function draw() {
  background(255);
  // दरवाजे की घंटी दिखाओ
  doorbell.display(mouseX, mouseY);
}

function mousePressed() {
  // यदि उपयोगकर्ता दरवाजे की घंटी पर क्लिक करता है, तो ध्वनि बजाएं!
  if (doorbell.contains(mouseX, mouseY)) {
    dingdong.play();
  }
}
