/*
  * @name लोड सेव किया गया JSON
  * @description बबल क्लास बनाएं, डेटा का उपयोग करके कई बबल को इंस्टेंट करें
  * एक JSON फ़ाइल, और स्क्रीन पर परिणाम प्रदर्शित करें।
  * क्योंकि वेब ब्राउजर फाइलों को सेव करने में भिन्न होते हैं, हम इसका उपयोग नहीं करते हैं
  * saveJSON, प्रोसेसिंग उदाहरण के विपरीत।<br><br>
  * प्रोसेसिंग के लिए डेनियल शिफमैन के <a href="https://processing.org/examples/loadsavejson.html">LoadSaveJSON उदाहरण</a> पर आधारित।
  */

// बबल क्लास
class Bubble {
  constructor(x, y, diameter, name) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.radius = diameter / 2;
    this.name = name;

    this.over = false;
  }

 // जांचें कि क्या माउस बुलबुले के ऊपर है
  rollover(px, py) {
    let d = dist(px, py, this.x, this.y);
    this.over = d < this.radius;
  }

  // बबल प्रदर्शित करें
  display() {
    stroke(0);
    strokeWeight(0.8);
    noFill();
    ellipse(this.x, this.y, this.diameter, this.diameter);
    if (this.over) {
      fill(0);
      textAlign(CENTER);
      text(this.name, this.x, this.y + this.radius + 20);
    }
  }
}

let data = {}; // loadJSON कॉल से परिणाम धारण करने के लिए वैश्विक वस्तु
let bubbles = []; // सभी बबल ऑब्जेक्ट्स को होल्ड करने के लिए ग्लोबल ऐरे

// "सेटअप" चलाने से पहले किसी भी एसिंक्रोनस डेटा लोडिंग को प्रीलोड में रखें
function preload() {
  data = loadJSON('assets/bubbles.json');
}

// सहेजे गए बबल डेटा को बबल ऑब्जेक्ट में बदलें
function loadData() {
  let bubbleData = data['bubbles'];
  for (let i = 0; i < bubbleData.length; i++) {
    // प्रत्येक वस्तु को सरणी में प्राप्त करें
    let bubble = bubbleData[i];
    // एक स्थिति वस्तु प्राप्त करें
    let position = bubble['position'];
    // स्थिति से x, y प्राप्त करें
    let x = position['x'];
    let y = position['y'];

    // व्यास और लेबल प्राप्त करें
    let diameter = bubble['diameter'];
    let label = bubble['label'];

    // ऑब्जेक्ट को सरणी में रखें
    bubbles.push(new Bubble(x, y, diameter, label));
  }
}

// हर बार माउस क्लिक करने पर एक नया बबल बनाएं।
function mousePressed() {
  // बबल में व्यास और लेबल जोड़ें
  let diameter = random(40, 80);
  let label = 'New Label';

  // नई JSON बबल ऑब्जेक्ट को सरणी में जोड़ें
  bubbles.push(new Bubble(mouseX, mouseY, diameter, label));

  // यदि बहुत अधिक हैं तो बबल काउंट प्रून करें
  if (bubbles.length > 10) {
    bubbles.shift(); // सरणी से पहले आइटम को हटा दें
  }
}

function setup() {
  createCanvas(640, 360);
  loadData();
}

function draw() {
  background(255);

  // सभी बुलबुले प्रदर्शित करें
  for (let i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }

  // नीचे की ओर लेबल निर्देश
  textAlign(LEFT);
  fill(0);
  text('Click to add bubbles.', 10, height - 10);
}
