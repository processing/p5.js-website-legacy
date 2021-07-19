 /*
  * @name Game of Life
  * @description जॉन कॉनवे के गेम ऑफ लाइफ सीए का एक बुनियादी कार्यान्वयन
  * (<a href="http://natureofcode.com">natureofcode.com</a>)
  */
let w;
let columns;
let rows;
let board;
let next;

function setup() {
  createCanvas(720, 400);
  w = 20;
 // कॉलम और पंक्तियों की गणना करें
  columns = floor(width / w);
  rows = floor(height / w);
 // 2D सरणी बनाने का निराला तरीका JS है
  board = new Array(columns);
  for (let i = 0; i < columns; i++) {
    board[i] = new Array(rows);
  }
 // कई 2D सरणियों का उपयोग करने जा रहे हैं और उन्हें स्वैप करें
  next = new Array(columns);
  for (i = 0; i < columns; i++) {
    next[i] = new Array(rows);
  }
  init();
}

function draw() {
  background(255);
  generate();
  for ( let i = 0; i < columns;i++) {
    for ( let j = 0; j < rows;j++) {
      if ((board[i][j] == 1)) fill(0);
      else fill(255);
      stroke(0);
      rect(i * w, j * w, w-1, w-1);
    }
  }

}

// माउस दबाए जाने पर बोर्ड को रीसेट करें
function mousePressed() {
  init();
}

// बेतरतीब ढंग से बोर्ड भरें
function init() {
  for (let i = 0; i < columns; i++) {
    for (let j = 0; j < rows; j++) {
      // किनारों को 0s . के साथ पंक्तिबद्ध करना
      if (i == 0 || j == 0 || i == columns-1 || j == rows-1) board[i][j] = 0;
      // बाकी को बेतरतीब ढंग से भरना
      else board[i][j] = floor(random(2));
      next[i][j] = 0;
    }
  }
}

// नई पीढ़ी बनाने की प्रक्रिया
function generate() {

// हमारे 2D सरणी में प्रत्येक स्थान के माध्यम से लूप करें और स्पॉट पड़ोसियों की जाँच करें
  for (let x = 1; x < columns - 1; x++) {
    for (let y = 1; y < rows - 1; y++) {
     // सभी राज्यों को 3x3 आसपास के ग्रिड में जोड़ें
      let neighbors = 0;
      for (let i = -1; i <= 1; i++) {
        for (let j = -1; j <= 1; j++) {
          neighbors += board[x+i][y+j];
        }
      }

      // वर्तमान सेल की स्थिति को घटाने के लिए एक छोटी सी चाल
      // हमने इसे उपरोक्त लूप में जोड़ा है
      neighbors -= board[x][y];
      // Rules of Life
      if      ((board[x][y] == 1) && (neighbors <  2)) next[x][y] = 0;           // तनहाई
      else if ((board[x][y] == 1) && (neighbors >  3)) next[x][y] = 0;           // अधिक आबादी वाला
      else if ((board[x][y] == 0) && (neighbors == 3)) next[x][y] = 1;           //पुन: उत्पन्न करें
      else                                             next[x][y] = board[x][y]; // ठहराव
    }
  }

  // स्वैप करें!
  let temp = board;
  board = next;
  next = temp;
}

