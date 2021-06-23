
/*
  * @name स्पाइरोग्राफ
  * @description यह स्केच a . बनाने के लिए सरल परिवर्तनों का उपयोग करता है
  * इंटरलॉकिंग सर्कल (साइन कहा जाता है) के साथ स्पाइरोग्राफ जैसा प्रभाव।
  * ट्रेसिंग और अंतर्निहित ज्यामिति दिखाने के बीच स्विच करने के लिए स्पेसबार दबाएं।<br>
  * उदाहरण <a href='http://lukedubois.com/' target='_blank'>R द्वारा बनाया गया है। ल्यूक डुबोइस</a>.<br>
  * <a href='http://en.wikipedia.org/wiki/Spirograph'>http://en.wikipedia.org/wiki/Spirograph</a>
  */
let NUMSINES = 20; // इनमें से कितनी चीजें हम एक साथ कर सकते हैं?
let sines = new Array(NUMSINES); // सभी मौजूदा कोणों को पकड़ने के लिए एक सरणी
let rad; // केंद्रीय साइन के लिए एक प्रारंभिक त्रिज्या मान
let i; // एक काउंटर चर

// क्या हो रहा है इसका अंदाजा लगाने के लिए इनके साथ खेलें:
let fund = 0.005; // केंद्रीय साइन की गति
let ratio = 1; // गति के लिए कौन सा गुणक प्रत्येक अतिरिक्त ज्या है?
let alpha = 50; // ट्रेसिंग सिस्टम कितना अपारदर्शी है

let trace = false; // क्या हम ट्रेस कर रहे हैं?

function setup() {
  createCanvas(710, 400);

  rad = height / 4; // केंद्रीय सर्कल के लिए त्रिज्या की गणना करें
  background(204); // स्क्रीन साफ़ करें

  for (let i = 0; i<sines.length; i++) {
    sines[i] = PI; // प्रत्येक व्यक्ति को उत्तर की ओर मुख करके प्रारंभ करें
  }
}

function draw() {
  if (!trace) {
    background(204); // स्पष्ट स्क्रीन अगर ज्यामिति दिखा रहा है
    stroke(0, 255); // काली कलम
    noFill(); // न भरें
  }

  // मुख्य कार्रवाई
  push(); // एक परिवर्तन मैट्रिक्स शुरू करें
  translate(width / 2, height / 2); // स्क्रीन के बीच में ले जाएँ

  for (let i = 0; i < sines.length; i++) {
    let erad = 0; // सर्कल के भीतर छोटे "बिंदु" के लिए त्रिज्या ... ट्रेस करते समय यह 'पेन' है
    // ट्रेसिंग के लिए सेटअप
    if (trace) {
      stroke(0, 0, 255 * (float(i) / sines.length), alpha); // नीला
      fill(0, 0, 255, alpha / 2); // भी, उम, नीला
      erad = 5.0 * (1.0 - float(i) / sines.length); // पेन की चौड़ाई किस साइन से संबंधित होगी
    }
    let radius = rad / (i + 1); // स्वयं सर्कल के लिए त्रिज्या
    rotate(sines[i]); // सर्कल घुमाएं
    if (!trace) ellipse(0, 0, radius * 2, radius * 2); // यदि हम अनुकरण कर रहे हैं, तो साइन ड्रा करें
    push(); // एक स्तर ऊपर जाएं
    translate(0, radius); // साइन एज पर जाएं
    if (!trace) ellipse(0, 0, 5, 5); // एक छोटा वृत्त बनाएं
    if (trace) ellipse(0, 0, erad, erad); // एक छोटा वृत्त बनाएं
    pop(); // एक स्तर नीचे जाएं
    translate(0, radius); // अगली साइन के लिए स्थिति में जाएं
    sines[i] = (sines[i] + (fund + (fund * i * ratio))) % TWO_PI; // मौलिक के आधार पर अद्यतन कोण
  }

  pop(); // अंतिम परिवर्तन पॉप डाउन करें

}

function keyReleased() {
  if (key==' ') {
    trace = !trace;
    background(255);
  }
}
