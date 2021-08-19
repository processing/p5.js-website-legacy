/*
  * @name वोल्फ्राम सीए
  * @description वुल्फराम 1-आयामी सेलुलर ऑटोमेटा का सरल प्रदर्शन
  * (<a href="http://natureofcode.com">natureofcode.com</a>)
  */

let w = 10;
// 0s और 1s की एक सरणी
let cells;

// हम मनमाने ढंग से "1" की स्थिति वाले केवल मध्य सेल से शुरू करते हैं
let generation = 0;

// नियम सेट को स्टोर करने के लिए एक सरणी, उदाहरण के लिए {0,1,1,0,1,1,0,1}
let ruleset = [0, 1, 0, 1, 1, 0, 1, 0];

function setup() {
  createCanvas(640, 400);
  cells = Array(floor(width / w));
  for (let i = 0; i < cells.length; i++) {
    cells[i] = 0;
  }
  cells[cells.length/2] = 1;

}

function draw() {
  for (let i = 0; i < cells.length; i++) {
    if (cells[i] === 1) {
      fill(200);
    } else {
      fill(51);
      noStroke();
      rect(i * w, generation * w, w, w);
    }
  }
  if (generation < height/w) {
    generate();
  }
}

// नई पीढ़ी बनाने की प्रक्रिया
function generate() {
  // पहले हम नए मूल्यों के लिए एक खाली सरणी बनाते हैं
  let nextgen = Array(cells.length);
  // प्रत्येक स्थान के लिए, वर्तमान स्थिति और पड़ोसी राज्यों की जांच करके नए राज्य का निर्धारण करें
  // किनारों को अनदेखा करें जिनमें केवल एक पड़ोसी हो
  for (let i = 1; i < cells.length-1; i++) {
    let left   = cells[i-1];   // वाम पड़ोसी राज्य
    let me     = cells[i];     // वर्तमान स्थिति
    let right  = cells[i+1];   // सही पड़ोसी राज्य
    nextgen[i] = rules(left, me, right); // नियमों के आधार पर अगली पीढ़ी की स्थिति की गणना करें
  }
 // वर्तमान पीढ़ी नई पीढ़ी है
  cells = nextgen;
  generation++;
}


// वोल्फ्राम नियमों को लागू करना
// सुधार किया जा सकता है और अधिक संक्षिप्त बनाया जा सकता है, लेकिन यहां हम स्पष्ट रूप से देख सकते हैं कि प्रत्येक मामले के लिए क्या चल रहा है
function rules(a, b, c) {
  if (a == 1 && b == 1 && c == 1) return ruleset[0];
  if (a == 1 && b == 1 && c == 0) return ruleset[1];
  if (a == 1 && b == 0 && c == 1) return ruleset[2];
  if (a == 1 && b == 0 && c == 0) return ruleset[3];
  if (a == 0 && b == 1 && c == 1) return ruleset[4];
  if (a == 0 && b == 1 && c == 0) return ruleset[5];
  if (a == 0 && b == 0 && c == 1) return ruleset[6];
  if (a == 0 && b == 0 && c == 0) return ruleset[7];
  return 0;
}

