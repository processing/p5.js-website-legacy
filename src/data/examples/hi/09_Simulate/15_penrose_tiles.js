/*
  * @name पेनरोज़ टाइलें
  * @frame 710,400
  * @description यह प्रोसेसिंग.org/examples से "पेनरोज़ टाइल" उदाहरण के डेविड ब्लिट्ज का एक पोर्ट है
  */

let ds;

function setup() {
  createCanvas(710, 400);
  ds = new PenroseLSystem();
  // कृपया, निम्न पंक्ति के साथ खेलें
  ds.simulate(5);
}

function draw() {
  background(0);
  ds.render();
}

function PenroseLSystem() {
    this.steps = 0;

    // ये पेनरोज़ रोम्बस एल-सिस्टम के लिए स्वयंसिद्ध और नियम हैं
    // एक संदर्भ अच्छा होगा, लेकिन मुझे एक अच्छा नहीं मिला
    this.axiom = "[X]++[X]++[X]++[X]++[X]";
    this.ruleW = "YF++ZF----XF[-YF----WF]++";
    this.ruleX = "+YF--ZF[---WF--XF]+";
    this.ruleY = "-WF++XF[+++YF++ZF]-";
    this.ruleZ = "--YF++++WF[+ZF++++XF]--XF";

    // कृपया निम्नलिखित दो पंक्तियों के साथ खेलें
    this.startLength = 460.0;
    this.theta = TWO_PI / 10.0; // 36 डिग्री, TWO_PI / 6.0 आज़माएं, ...
    this.reset();
}

PenroseLSystem.prototype.simulate = function (gen) {
  while (this.getAge() < gen) {
    this.iterate(this.production);
  }
}

PenroseLSystem.prototype.reset = function () {
    this.production = this.axiom;
    this.drawLength = this.startLength;
    this.generations = 0;
  }

PenroseLSystem.prototype.getAge = function () {
    return this.generations;
  }

// उत्पादन स्ट्रिंग का नया पुनरावृत्ति बनाने के लिए प्रतिस्थापन नियम लागू करें
PenroseLSystem.prototype.iterate = function() {
    let newProduction = "";

    for(let i=0; i < this.production.length; ++i) {
      let step = this.production.charAt(i);
      // यदि वर्तमान वर्ण 'W' है, तो वर्तमान वर्ण को बदलें
       // संबंधित नियम के अनुसार
      if (step == 'W') {
        newProduction = newProduction + this.ruleW;
      }
      else if (step == 'X') {
        newProduction = newProduction + this.ruleX;
      }
      else if (step == 'Y') {
        newProduction = newProduction + this.ruleY;
      }
      else if (step == 'Z') {
        newProduction = newProduction + this.ruleZ;
      }
      else {
         // सभी 'एफ' वर्णों को छोड़ दें, अन्य को स्पर्श न करें
         // वर्ण (यानी '+', '-', '[', ']'
        if (step != 'F') {
          newProduction = newProduction + step;
        }
      }
    }

    this.drawLength = this.drawLength * 0.5;
    this.generations++;
    this.production = newProduction;
}

// प्रोडक्शन स्ट्रिंग को टर्टल ग्राफिक में बदलें
PenroseLSystem.prototype.render = function () {
    translate(width / 2, height / 2);

    this.steps += 20;
    if(this.steps > this.production.length) {
      this.steps = this.production.length;
    }

    for(let i=0; i<this.steps; ++i) {
      let step = this.production.charAt(i);

      //'W', 'X', 'Y', 'Z' प्रतीक वास्तव में कछुए की क्रिया के अनुरूप नहीं हैं
      if( step == 'F') {
        stroke(255, 60);
        for(let j=0; j < this.repeats; j++) {
          line(0, 0, 0, -this.drawLength);
          noFill();
          translate(0, -this.drawLength);
        }
        this.repeats = 1;
      }
      else if (step == '+') {
        rotate(this.theta);
      }
      else if (step == '-') {
        rotate(-this.theta);
      }
      else if (step == '[') {
        push();
      }
      else if (step == ']') {
        pop();
      }
    }
  }


