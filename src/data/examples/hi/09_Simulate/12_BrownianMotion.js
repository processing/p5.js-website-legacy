/*
  * @name ब्राउनियन मोशन
  * @description एक सतत लाइन के रूप में यादृच्छिक गति को रिकॉर्ड करना।
  * प्रसंस्करण उदाहरण पृष्ठ से मूल उदाहरण का पोर्ट।
  */
let num = 2000;
let range = 6;

let ax = [];
let ay = [];


function setup() {
  createCanvas(710, 400);
  for ( let i = 0; i < num; i++ ) {
    ax[i] = width / 2;
    ay[i] = height / 2;
  }
  frameRate(30);
}

function draw() {
  background(51);

  // सभी तत्वों को 1 स्थान पर बाईं ओर शिफ्ट करें
  for ( let i = 1; i < num; i++ ) {
    ax[i - 1] = ax[i];
    ay[i - 1] = ay[i];
  }

  // सरणी के अंत में एक नया मान डालें
  ax[num - 1] += random(-range, range);
  ay[num - 1] += random(-range, range);

  // स्क्रीन पर सभी बिंदुओं को रोकें
  ax[num - 1] = constrain(ax[num - 1], 0, width);
  ay[num - 1] = constrain(ay[num - 1], 0, height);

  // बिंदुओं को जोड़ने वाली एक रेखा खींचें
  for ( let j = 1; j < num; j++ ) {
    let val = j / num * 204.0 + 51;
    stroke(val);
    line(ax[j - 1], ay[j - 1], ax[j], ay[j]);
  }
}