/*
  * @name रे कास्टिंग
  * @description जोनाथन वाटसन द्वारा मूल उदाहरण।
  * <br><br>रे कास्टिंग के साथ 3डी स्पेस में माउस की स्थिति का पता लगाना।
  */
const objects = [];
let eyeZ;

function setup() {
  createCanvas(710, 400, WEBGL);

  eyeZ = 800; // डिफ़ॉल्ट दूरी कैमरा मूल से दूर है।

  objects.push(new IntersectPlane(1, 0, 0, -100, 0, 0)); // बाईं दीवार
  objects.push(new IntersectPlane(1, 0, 0, 100, 0, 0)); // दाहिनी दीवार
  objects.push(new IntersectPlane(0, 1, 0, 0, -100, 0)); // नीचे की दीवार
  objects.push(new IntersectPlane(0, 1, 0, 0, 100, 0)); // शीर्ष दीवार
  objects.push(new IntersectPlane(0, 0, 1, 0, 0, 0)); // पीछे की दीवार

  noStroke();
  ambientMaterial(250);
}

function draw() {
  background(0);

  // रोशनी
  pointLight(255, 255, 255, 0, 0, 400);
  ambientLight(244, 122, 158);

 // बाईं दीवार
  push();
  translate(-100, 0, 200);
  rotateY((90 * PI) / 180);
  plane(400, 200);
  pop();

  // दाहिनी दीवार
  push();
  translate(100, 0, 200);
  rotateY((90 * PI) / 180);
  plane(400, 200);
  pop();

  // नीचे की दीवार
  push();
  translate(0, 100, 200);
  rotateX((90 * PI) / 180);
  plane(200, 400);
  pop();

  // शीर्ष दीवार
  push();
  translate(0, -100, 200);
  rotateX((90 * PI) / 180);
  plane(200, 400);
  pop();

  plane(200, 200); // पीछे की दीवार

  const x = mouseX - width / 2;
  const y = mouseY - height / 2;

  const Q = createVector(0, 0, eyeZ); // किरण पर एक बिंदु और कैमरे की डिफ़ॉल्ट स्थिति।
  const v = createVector(x, y, -eyeZ); // किरण की दिशा वेक्टर।

  let intersect; // किरण और समतल के बीच का प्रतिच्छेदन बिंदु।
  let closestLambda = eyeZ * 10; // ड्रा दूरी।

  for (let x = 0; x < objects.length; x += 1) {
    let object = objects[x];
    let lambda = object.getLambda(Q, v); // लैम्ब्डा का मान जहां किरण वस्तु को काटती है

    if (lambda < closestLambda && lambda > 0) {
      // किरण और वस्तु के प्रतिच्छेदन की स्थिति का पता लगाएं।
      intersect = p5.Vector.add(Q, p5.Vector.mult(v, lambda));
      closestLambda = lambda;
    }
  }

  // कर्सर
  push();
  translate(intersect);
  fill(237, 34, 93);
  sphere(10);
  pop();
}

// एक विमान के लिए कक्षा जो अनंत तक फैली हुई है।
class IntersectPlane {
  constructor(n1, n2, n3, p1, p2, p3) {
    this.normal = createVector(n1, n2, n3); // विमान का सामान्य वेक्टर
    this.point = createVector(p1, p2, p3); // विमान पर एक बिंदु
    this.d = this.point.dot(this.normal);
  }

  getLambda(Q, v) {
    return (-this.d - this.normal.dot(Q)) / this.normal.dot(v);
  }
}
