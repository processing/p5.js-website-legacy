/*
  * @name पत्र
  * @description पत्र एक फ़ॉन्ट लोड करके स्क्रीन पर खींचा जा सकता है, सेटिंग
  * इसकी विशेषताएँ और फिर अक्षर खींचना। यह उदाहरण for . का उपयोग करता है
  * कैनवास को स्वचालित रूप से भरने के लिए लूप और यूनिकोड संदर्भ संख्या
  * एक ग्रिड में वर्ण। स्वरों का चयन किया जाता है और एक विशिष्ट भरण रंग दिया जाता है।
  */
let font,
  fontsize = 32;

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

  // अक्षरों और बाएँ और शीर्ष हाशिये के बीच की खाई को सेट करें
  let gap = 52;
  let margin = 10;
  translate(margin * 4, margin * 4);

   // अपने इच्छित चरित्र पर शुरू करने के लिए काउंटर सेट करें
   // इस मामले में 35, जो # प्रतीक . है
  let counter = 35;

  // जब तक कैनवास पर जगह है तब तक लूप करें
  for (let y = 0; y < height - gap; y += gap) {
    for (let x = 0; x < width - gap; x += gap) {
      // उनके यूनिकोड नंबर द्वारा अलग-अलग अक्षरों को पुनः प्राप्त करने के लिए काउंटर का उपयोग करें
      let letter = char(counter);

      // स्वरों और अन्य वर्णों में अलग-अलग रंग जोड़ें
      if (
        letter === 'A' ||
        letter === 'E' ||
        letter === 'I' ||
        letter === 'O' ||
        letter === 'U'
      ) {
        fill('#ed225d');
      } else {
        fill(255);
      }

      // पत्र को स्क्रीन पर ड्रा करें
      text(letter, x, y);

      // काउंटर बढ़ाएँ
      counter++;
    }
  }
}
