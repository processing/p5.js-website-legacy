/*
  * @name PolarToCartesian
  * @description एक ध्रुवीय निर्देशांक परिवर्तित करें (r, थीटा)
  * कार्तीय (x, y) के लिए: x = rcos (थीटा) y = rsin (थीटा)
  * डैनियल शिफमैन द्वारा मूल।
  */
let r;

// कोण और कोणीय वेग, त्वरण
let theta;
let theta_vel;
let theta_acc;

function setup() {
  createCanvas(710, 400);

  // सभी मूल्यों को प्रारंभ करें
  r = height * 0.45;
  theta = 0;
  theta_vel = 0;
  theta_acc = 0.0001;
}

function draw() {
  background(0);

  // मूल बिंदु को स्क्रीन के केंद्र में अनुवाद करें
  translate(width / 2, height / 2);

  // ध्रुवीय को कार्टेशियन में बदलें
  let x = r * cos(theta);
  let y = r * sin(theta);

  // कार्तीय निर्देशांक पर दीर्घवृत्त ड्रा करें
  ellipseMode(CENTER);
  noStroke();
  fill(200);
  ellipse(x, y, 32, 32);

  // कोण पर त्वरण और वेग लागू करें
   // (r इस उदाहरण में स्थिर रहता है)
  theta_vel += theta_acc;
  theta += theta_vel;
}
