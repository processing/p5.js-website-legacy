/*
  * @name ऐरे
  * @description एक सरणी डेटा की एक सूची है। एक सरणी में डेटा का प्रत्येक टुकड़ा
  * को एक सूचकांक संख्या द्वारा पहचाना जाता है जो इसकी स्थिति का प्रतिनिधित्व करता है
  * सरणी। Arrays शून्य आधारित हैं, जिसका अर्थ है कि पहला
  * सरणी में तत्व [0] है, दूसरा तत्व [1] है, और इसी तरह।
  * इस उदाहरण में, "coswave" नामक एक सरणी बनाई गई है और
  * कोसाइन मूल्यों से भरा हुआ। यह डेटा तीन प्रदर्शित होता है
  * स्क्रीन पर अलग तरीके।
  */
let coswave = [];

function setup() {
  createCanvas(720, 360);
  for (let i = 0; i < width; i++) {
    let amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  background(255);
  noLoop();
}

function draw() {
  let y1 = 0;
  let y2 = height / 3;
  for (let i = 0; i < width; i += 3) {
    stroke(coswave[i] * 255);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = y1 + y1;
  for (let i = 0; i < width; i += 3) {
    stroke((coswave[i] * 255) / 4);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = height;
  for (let i = 0; i < width; i += 3) {
    stroke(255 - coswave[i] * 255);
    line(i, y1, i, y2);
  }
}
