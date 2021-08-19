/*
  * @name चमक
  * @description डैन शिफमैन द्वारा। यह प्रोग्राम एक हिस्से की चमक को समायोजित करता है
  * माउस से प्रत्येक पिक्सेल की दूरी की गणना करके छवि का।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको आवश्यकता होगी
  * कम से कम एक छवि फ़ाइल और चल रहे <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em> </p>
  */
let img;

function preload() {
  img = loadImage('assets/moonwalk.jpg');
}

function setup() {
  createCanvas(720, 200);
  pixelDensity(1);
  img.loadPixels();
  loadPixels();
}

function draw() {
  for (let x = 0; x < img.width; x++) {
    for (let y = 0; y < img.height; y++) {
      // Calculate the 1D location from a 2D grid
      let loc = (x + y * img.width) * 4;
      // Get the R,G,B values from image
      let r, g, b;
      r = img.pixels[loc];
      // Calculate an amount to change brightness based on proximity to the mouse
      let maxdist = 50;
      let d = dist(x, y, mouseX, mouseY);
      let adjustbrightness = (255 * (maxdist - d)) / maxdist;
      r += adjustbrightness;
      // Constrain RGB to make sure they are within 0-255 color range
      r = constrain(r, 0, 255);
      // Make a new color and set pixel in the window
      //color c = color(r, g, b);
      let pixloc = (y * width + x) * 4;
      pixels[pixloc] = r;
      pixels[pixloc + 1] = r;
      pixels[pixloc + 2] = r;
      pixels[pixloc + 3] = 255;
    }
  }
  updatePixels();
}
