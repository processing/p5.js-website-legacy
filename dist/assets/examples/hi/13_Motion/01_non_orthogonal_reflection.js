/*
  * @name नॉन ऑर्थोगोनल रिफ्लेक्शन
  * @frame 710,400 (वैकल्पिक)
  * @description यह प्रोसेसिंग.org/examples से "प्रतिबिंब 1" उदाहरण के डेविड ब्लिट्ज का एक पोर्ट है
  */

// फर्श के बाएं हाथ की स्थिति
let base1;

// फर्श के दाहिने हाथ की स्थिति
let base2;
// फर्श की लंबाई
// बेसलेंथ दें;

// चलती गेंद से संबंधित चर
let position;
let velocity;
let r = 6;
let speed = 3.5;

function setup() {
  createCanvas(710, 400);

  fill(128);
  base1 = createVector(0, height - 150);
  base2 = createVector(width, height);
   //createGround();

   // स्क्रीन के मध्य शीर्ष पर अंडाकार प्रारंभ करें
  position = createVector(width / 2, 0);

  // प्रारंभिक यादृच्छिक वेग की गणना करें
  velocity = p5.Vector.random2D();
  velocity.mult(speed);
}

function draw() {
  // ड्रा बैकग्राउंड
  fill(0, 12);
  noStroke();
  rect(0, 0, width, height);

  // ड्रा बेस
  fill(200);
  quad(base1.x, base1.y, base2.x, base2.y, base2.x, height, 0, height);

  // बेस टॉप नॉर्मल की गणना करें
  let baseDelta = p5.Vector.sub(base2, base1);
  baseDelta.normalize();
  let normal = createVector(-baseDelta.y, baseDelta.x);
  let intercept = p5.Vector.dot(base1, normal);

  // दीर्घवृत्त खींचें
  noStroke();
  fill(255);
  ellipse(position.x, position.y, r * 2, r * 2);

  // दीर्घवृत्त ले जाएँ
  position.add(velocity);

  // सामान्यीकृत घटना वेक्टर
  incidence = p5.Vector.mult(velocity, -1);
  incidence.normalize();

  // बेस के साथ टकराव का पता लगाएं और संभालें
  if (p5.Vector.dot(normal, position) > intercept) {
    // घटना वेक्टर और बेस टॉप के डॉट उत्पाद की गणना करें
    let dot = incidence.dot(normal);

    // प्रतिबिंब वेक्टर की गणना करें
    // दिशा वेक्टर को प्रतिबिंब वेक्टर असाइन करें
    velocity.set(
      2 * normal.x * dot - incidence.x,
      2 * normal.y * dot - incidence.y,
      0
    );
    velocity.mult(speed);

    // टकराव बिंदु पर आधार शीर्ष सामान्य बनाएं
    stroke(255, 128, 0);
    line(
      position.x,
      position.y,
      position.x - normal.x * 100,
      position.y - normal.y * 100
    );
  }
  //}

  // सीमा टकराव का पता लगाएं
  // सही
  if (position.x > width - r) {
    position.x = width - r;
    velocity.x *= -1;
  }
  // बाएं
  if (position.x < r) {
    position.x = r;
    velocity.x *= -1;
  }
  // ऊपर
  if (position.y < r) {
    position.y = r;
    velocity.y *= -1;

    // बेस टॉप को रैंडमाइज करें
    base1.y = random(height - 100, height);
    base2.y = random(height - 100, height);
  }
}
