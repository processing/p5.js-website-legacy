/*
  * @name एल-सिस्टम्स
  * @description यह स्केच लिंडनमेयर पर आधारित एक स्वचालित ड्राइंग बनाता है
  * या (एल-) प्रणाली। एल-सिस्टम का उपयोग अक्सर प्रक्रियात्मक ग्राफिक्स बनाने के लिए किया जाता है
  * प्राकृतिक, ज्यामितीय, या दिलचस्प "फ्रैक्टल-शैली" पैटर्न।<br>
  * उदाहरण <a href='http://lukedubois.com/' target='_blank'>R द्वारा बनाया गया है। ल्यूक डुबोइस</a>.<br>
  * <a href='https://en.wikipedia.org/wiki/L-system'>https://en.wikipedia.org/wiki/L-system</a>
  */
// कछुआ सामान:
let x, y; // कछुए की वर्तमान स्थिति
let currentangle = 0; // कछुआ किस ओर इशारा कर रहा है
let step = 20; // प्रत्येक 'एफ' के साथ कछुआ कितना चलता है
let angle = 90; // कछुआ '-' या '+' से कितना मुड़ता है

// लिंडेनमेयर स्टफ (एल-सिस्टम)
let thestring = 'A'; // "स्वयंसिद्ध" या स्ट्रिंग की शुरुआत
let numloops = 5; // पूर्व-गणना करने के लिए कितने पुनरावृत्तियों
let therules = []; // नियमों के लिए सरणी
therules[0] = ['A', '-BF+AFA+FB-']; // पहला नियम
therules[1] = ['B', '+AF-BFB-FA+']; // दूसरा नियम

let whereinstring = 0; // एल-सिस्टम में हम कहां हैं?

function setup() {
  createCanvas(710, 400);
  background(255);
  stroke(0, 0, 0, 255);

  // निचले-बाएँ कोने पर x और y स्थिति शुरू करें
  x = 0;
  y = height-1;

  // एल-सिस्टम की गणना करें
  for (let i = 0; i < numloops; i++) {
    thestring = lindenmayer(thestring);
  }
}

function draw() {

  // स्ट्रिंग में वर्तमान वर्ण बनाएं:
  drawIt(thestring[whereinstring]);

   // उस बिंदु को बढ़ाएं जहां हम स्ट्रिंग पढ़ रहे हैं।
   // अंत में चारों ओर लपेटें।
  whereinstring++;
  if (whereinstring > thestring.length-1) whereinstring = 0;

}

// एल-सिस्टम की व्याख्या करें
function lindenmayer(s) {
  let outputstring = ''; // एक खाली आउटपुट स्ट्रिंग शुरू करें

  // प्रतीक मिलान की तलाश में 'थेरुल्स' के माध्यम से पुनरावृति करें:
  for (let i = 0; i < s.length; i++) {
    let ismatch = 0; // डिफ़ॉल्ट रूप से, कोई मिलान नहीं
    for (let j = 0; j < therules.length; j++) {
      if (s[i] == therules[j][0])  {
        outputstring += therules[j][1]; // प्रतिस्थापन लिखें
        ismatch = 1; // हमारे पास एक मैच है, इसलिए प्रतीक पर कॉपी न करें
        break; // इसके लिए () लूप से बाहर निकलें
      }
    }
    // अगर कुछ भी मेल नहीं खाता है, तो बस प्रतीक को कॉपी करें।
    if (ismatch == 0) outputstring+= s[i];
  }

  return outputstring; // संशोधित स्ट्रिंग भेजें
}

// यह एक कस्टम फ़ंक्शन है जो टर्टल कमांड खींचता है
function drawIt(k) {

  if (k=='F') { // आगे बढ़ें
   // स्टेप और करंट एंगल के आधार पर ध्रुवीय से कार्टेशियन:
    let x1 = x + step*cos(radians(currentangle));
    let y1 = y + step*sin(radians(currentangle));
    line(x, y, x1, y1); // पुराने और नए को कनेक्ट करें

    // कछुए की स्थिति को अपडेट करें:
    x = x1;
    y = y1;
  } else if (k == '+') {
    currentangle += angle; // बांए मुड़िए
  } else if (k == '-') {
    currentangle -= angle; // दांए मुड़िए
  }

  // मुझे कुछ यादृच्छिक रंग मान दें:
  let r = random(128, 255);
  let g = random(0, 192);
  let b = random(0, 50);
  let a = random(50, 100);

  // त्रिज्या के लिए एक गाऊसी (डी एंड डी) वितरण चुनें:
  let radius = 0;
  radius += random(0, 15);
  radius += random(0, 15);
  radius += random(0, 15);
  radius = radius / 3;

  // सामान ड्रा करें:
  fill(r, g, b, a);
  ellipse(x, y, radius, radius);
}