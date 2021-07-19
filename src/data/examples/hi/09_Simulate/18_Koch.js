/*
  * @name कोच कर्व
  * @description एक साधारण फ्रैक्टल, कोच स्नोफ्लेक प्रस्तुत करता है। प्रत्येक पुनरावर्ती स्तर क्रम में तैयार किया गया है।
  * डैनियल शिफमैन द्वारा
  */
let k;

function setup() {
  createCanvas(710, 400);
  frameRate(1); // धीरे-धीरे चेतन करें
  k = new KochFractal();
}

function draw() {
  background(0);
  // बर्फ के टुकड़े खींचता है!
  k.render();
  // पुनरावृति
  k.nextLevel();
  // आइए इसे 5 बार से अधिक न करें। . .
  if (k.getCount() > 5) {
    k.restart();
  }
}

// भग्न में एक रेखा खंड का वर्णन करने के लिए एक वर्ग
// कोच एल्गोरिथ्म के अनुसार लाइन के साथ midp5.Vectors की गणना करने के तरीके शामिल हैं

class KochLine {
  constructor(a,b) {
     // दो p5.Vectors,
     // प्रारंभ "बाएं" p5 है। वेक्टर और
     // अंत "सही p5.Vector" है
    this.start = a.copy();
    this.end = b.copy();
  }

  display() {
    stroke(255);
    line(this.start.x, this.start.y, this.end.x, this.end.y);
  }

  kochA() {
    return this.start.copy();
  }

  // यह आसान है, रास्ते का सिर्फ 1/3
  kochB() {
    let v = p5.Vector.sub(this.end, this.start);
    v.div(3);
    v.add(this.start);
    return v;
  }

  // अधिक जटिल, यह पता लगाने के लिए थोड़ा ट्रिगर का उपयोग करना होगा कि यह p5.Vector कहाँ है!
  kochC() {
    let a = this.start.copy(); // शुरुआत में शुरू करें
    let v = p5.Vector.sub(this.end, this.start);
    v.div(3);
    a.add(v); // बिंदु बी पर ले जाएँ
    v.rotate(-PI/3); // 60 डिग्री घुमाएँate
    a.add(v);  // बिंदु C . पर जाएँ
    return a;
  }

 // आसान, रास्ते का सिर्फ 2/3
  kochD() {
    let v = p5.Vector.sub(this.end, this.start);
    v.mult(2/3.0);
    v.add(this.start);
    return v;
  }

  kochE() {
    return this.end.copy();
  }
}

// स्नोफ्लेक पैटर्न में लाइन सेगमेंट की सूची को प्रबंधित करने के लिए एक वर्ग

class KochFractal {
  constructor() {
    this.start = createVector(0,height-20);   // एक p5. शुरुआत के लिए वेक्टर
    this.end = createVector(width,height-20); // एक p5। अंत के लिए वेक्टर
    this.lines = [];                         // सभी लाइनों का ट्रैक रखने के लिए एक सरणी
    this.count = 0;
    this.restart();
  }

  nextLevel() {
     // प्रत्येक पंक्ति के लिए जो सरणी सूची में है
     // एक नई सरणी सूची में 4 और लाइनें बनाएं
    this.lines = this.iterate(this.lines);
    this.count++;
  }

  restart() {
    this.count = 0;     // रीसेट गिनती
    this.lines = [];    // सरणी सूची खाली करें
    this.lines.push(new KochLine(this.start,this.end));  // प्रारंभिक पंक्ति जोड़ें (एक छोर p5.Vector से दूसरे तक)
  }

  getCount() {
    return this.count;
  }

  // यह आसान है, बस सभी रेखाएँ खींचें
  render() {
    for(let i = 0; i < this.lines.length; i++) {
      this.lines[i].display();
    }
  }

   // यहां जादू पैदा होता है
   // चरण 1: एक खाली सरणी सूची बनाएं
   // चरण 2: वर्तमान में सरणी सूची में प्रत्येक पंक्ति के लिए
   // - कोच एल्गोरिथम के आधार पर 4 लाइन सेगमेंट की गणना करें
   // - सभी 4 लाइन सेगमेंट को नई सरणी सूची में जोड़ें
   // चरण 3: नई सरणी सूची लौटाएं और यह संरचना के लिए रेखा खंडों की सूची बन जाती है

   // जैसा कि हम इसे बार-बार करते हैं, प्रत्येक पंक्ति 4 पंक्तियों में टूट जाती है, जो 4 पंक्तियों में टूट जाती है, और इसी तरह। . .
  iterate(before) {
    let now = [];    // खाली सूची बनाएं
    for(let i = 0; i < this.lines.length; i++) {
      let l = this.lines[i];
      // 5 koch p5.Vectors की गणना करें (लाइन ऑब्जेक्ट द्वारा हमारे लिए किया गया)
      let a = l.kochA();
      let b = l.kochB();
      let c = l.kochC();
      let d = l.kochD();
      let e = l.kochE();
      // सभी p5.Vectors के बीच लाइन सेगमेंट बनाएं और उन्हें जोड़ें
      now.push(new KochLine(a,b));
      now.push(new KochLine(b,c));
      now.push(new KochLine(c,d));
      now.push(new KochLine(d,e));
    }
    return now;
  }
}
