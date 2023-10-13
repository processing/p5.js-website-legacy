/*
  * @name वेवमेकर
  * @description यह दर्शाता है कि कैसे लहरें (जैसे पानी की लहरें) उभरती हैं
  * जगह-जगह दोलन करने वाले कणों से। तरंग को निर्देशित करने के लिए अपने माउस को ले जाएं।
  * डेव व्हाईट के <a href="https://beesandbombs.tumblr.com/post/45513650541/orbiters">Orbiters</a> से प्रेरित आतिश भाटिया द्वारा योगदान दिया गया।
  */

let t = 0; // समय चर

function setup() {
  createCanvas(600, 600);
  noStroke();
  fill(40, 200, 40);
}

function draw() {
  background(10, 10); // पारभासी पृष्ठभूमि (ट्रेल्स बनाता है)

  // दीर्घवृत्त का x और y ग्रिड बनाएं
  for (let x = 0; x <= width; x = x + 30) {
    for (let y = 0; y <= height; y = y + 30) {
      // प्रत्येक सर्कल का प्रारंभिक बिंदु माउस की स्थिति पर निर्भर करता है
      const xAngle = map(mouseX, 0, width, -4 * PI, 4 * PI, true);
      const yAngle = map(mouseY, 0, height, -4 * PI, 4 * PI, true);
      // और कण के स्थान के आधार पर भी बदलता रहता है
      const angle = xAngle * (x / width) + yAngle * (y / height);

     // प्रत्येक कण एक वृत्त में चलता है
      const myX = x + 20 * cos(2 * PI * t + angle);
      const myY = y + 20 * sin(2 * PI * t + angle);

      ellipse(myX, myY, 10); // कण खींचे
    }
  }

  t = t + 0.01; // समय सुधारें
}
