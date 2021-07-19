/*
  * @name स्नोफ्लेक्स
  * @description पार्टिकल सिस्टम बर्फ के टुकड़े गिरने की गति का अनुकरण करता है।
  * स्नोफ्लेक कणों को धारण करने के लिए वस्तुओं की एक सरणी का उपयोग करता है।
  * आतिश भाटिया द्वारा योगदान दिया गया।
  */

let snowflakes = []; // स्नोफ्लेक वस्तुओं को रखने के लिए सरणी

function setup() {
  createCanvas(400, 600);
  fill(240);
  noStroke();
}

function draw() {
  background('brown');
  let t = frameCount / 60; // समय सुधारें

  // प्रत्येक फ्रेम में यादृच्छिक संख्या में स्नोफ्लेक्स बनाएं
  for (let i = 0; i < random(5); i++) {
    snowflakes.push(new snowflake()); // स्नोफ्लेक ऑब्जेक्ट संलग्न करें
  }

  // लूप के लिए स्नोफ्लेक्स के माध्यम से लूप के लिए लूप
  for (let flake of snowflakes) {
    flake.update(t); // स्नोफ्लेक स्थिति अपडेट करें
    flake.display(); // स्नोफ्लेक ड्रा करें
  }
}

// स्नोफ्लेक क्लास
function snowflake() {
  // निर्देशांक आरंभ करें
  this.posX = 0;
  this.posY = random(-50, 0);
  this.initialangle = random(0, 2 * PI);
  this.size = random(2, 5);

  // स्नोफ्लेक सर्पिल की त्रिज्या
  // चुना गया ताकि बर्फ के टुकड़े समान रूप से क्षेत्र में फैले हों
  this.radius = sqrt(random(pow(width / 2, 2)));

  this.update = function(time) {
    // x स्थिति एक सर्कल का अनुसरण करती है
    let w = 0.6; // कोणीय गति
    let angle = w * time + this.initialangle;
    this.posX = width / 2 + this.radius * sin(angle);

    // अलग-अलग आकार के बर्फ के टुकड़े थोड़े अलग y गति से गिरते हैं
    this.posY += pow(this.size, 0.5);

    // स्क्रीन के पिछले छोर पर बर्फ के टुकड़े को हटा दें
    if (this.posY > height) {
      let index = snowflakes.indexOf(this);
      snowflakes.splice(index, 1);
    }
  };

  this.display = function() {
    ellipse(this.posX, this.posY, this.size);
  };
}
