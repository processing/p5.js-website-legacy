/*
  * @name शब्द
  * @description text() फ़ंक्शन का उपयोग स्क्रीन पर शब्द लिखने के लिए किया जाता है।
  * शब्दों को textAlign() के साथ बाएं, केंद्र या दाएं संरेखित किया जा सकता है
  * फ़ंक्शन, और आकृतियों की तरह, शब्दों को fill() के साथ रंगा जा सकता है।
  */
let font,
  fontsize = 40;

function preload() {
   // सुनिश्चित करें कि .ttf या .otf फ़ॉन्ट संपत्ति निर्देशिका में संग्रहीत है
   // सेटअप से पहले लोड किया जाता है setup() और draw() कहा जाता है
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

  // टेक्स्ट विशेषताओं को सेट करें
  textFont(font);
  textSize(fontsize);
  textAlign(CENTER, CENTER);
}

function draw() {
  background(160);

   // टेक्स्ट को दाईं ओर संरेखित करें
   // और कैनवास के बाएँ तीसरे भाग में drawWords () चलाएँ
  textAlign(RIGHT);
  drawWords(width * 0.25);

   // पाठ को केंद्र में संरेखित करें
   // और कैनवास के बीच में drawWords() चलाएँ
  textAlign(CENTER);
  drawWords(width * 0.5);

   // टेक्स्ट को बाईं ओर संरेखित करें
   // और कैनवास के दाहिने तीसरे भाग में drawWords () चलाएँ
  textAlign(LEFT);
  drawWords(width * 0.75);
}

function drawWords(x) {
   // text() फ़ंक्शन को तीन मापदंडों की आवश्यकता होती है:
   // आकर्षित करने के लिए पाठ, क्षैतिज स्थिति,
   // और ऊर्ध्वाधर स्थिति
  fill(0);
  text('ichi', x, 80);

  fill(65);
  text('ni', x, 150);

  fill(190);
  text('san', x, 220);

  fill(255);
  text('shi', x, 290);
}
