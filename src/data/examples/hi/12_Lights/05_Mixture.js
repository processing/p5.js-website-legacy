/*
  * @name मिश्रण
  * @frame 710,400 (वैकल्पिक)
  * @description तीन अलग-अलग प्रकार की रोशनी वाला एक बॉक्स प्रदर्शित करें।
  */
function setup() {
  createCanvas(710, 400, WEBGL);
  noStroke();
}

function draw() {
  background(0);

  // दाईं ओर नारंगी बिंदु प्रकाश
  pointLight(150, 100, 0, 500, 0, 200);

  // बाईं ओर से नीली दिशात्मक रोशनी
  directionalLight(0, 102, 255, -1, 0, 0);

  // सामने से पीला स्पॉटलाइट
  pointLight(255, 255, 109, 0, 0, 300);

  rotateY(map(mouseX, 0, width, 0, PI));
  rotateX(map(mouseY, 0, height, 0, PI));
  box(200);
}
