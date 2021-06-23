/*
  * @name मंडेलब्रॉट सेत
  * @description मैंडलब्रॉट सेट का सरल प्रतिपादन।
  * प्रोसेसिंग के लिए डेनियल शिफमैन के <a href="https://processing.org/examples/mandelbrot.html">Mandelbrot उदाहरण</a> पर आधारित।
  */

function setup() {
  createCanvas(710, 400);
  pixelDensity(1);
  noLoop();
}

function draw() {
  background(0);

   // जटिल तल पर मूल्यों की एक श्रृंखला स्थापित करें
   // एक अलग रेंज हमें फ्रैक्टल पर "ज़ूम" करने की अनुमति देगा

   // यह सब चौड़ाई से शुरू होता है, उच्च या निम्न मानों का प्रयास करें
  const w = 4;
  const h = (w * height) / width;

  // चौड़ाई और ऊंचाई के नकारात्मक आधे से शुरू करें
  const xmin = -w/2;
  const ymin = -h/2;

 // सुनिश्चित करें कि हम पिक्सल [] सरणी में लिख सकते हैं।
 // केवल एक बार ऐसा करने की आवश्यकता है क्योंकि हम कोई अन्य ड्राइंग नहीं करते हैं।
  loadPixels();

  // जटिल विमान पर प्रत्येक बिंदु के लिए पुनरावृत्तियों की अधिकतम संख्या
  const maxiterations = 100;

  // x xmin से xmax तक जाता है
  const xmax = xmin + w;
  // y ymin से ymax . तक जाता है
  const ymax = ymin + h;

 // गणना करें कि हम प्रत्येक पिक्सेल के लिए x, y में वृद्धि करते हैं
  const dx = (xmax - xmin) / (width);
  const dy = (ymax - ymin) / (height);

  // प्रारंभ करें
  let y = ymin;
  for (let j = 0; j < height; j++) {
    // एक्स शुरू करें
    let x = xmin;
    for (let i = 0; i < width; i++) {

     // अब हम परीक्षण करते हैं, जैसा कि हम z = z^2 + cm को पुनरावृत्त करते हैं, क्या z अनंत की ओर जाता है?
      let a = x;
      let b = y;
      let n = 0;
      while (n < maxiterations) {
        const aa = a * a;
        const bb = b * b;
        const twoab = 2.0 * a * b;
        a = aa - bb + x;
        b = twoab + y;
        // हमारी सीमित दुनिया में अनंत सरल है, आइए इसे 16 . पर विचार करें
        if (dist(aa, bb, 0, 0) > 16) {
          break;  // टूटना
        }
        n++;
      }

      // हम प्रत्येक पिक्सेल को इस आधार पर रंगते हैं कि अनंत तक पहुंचने में कितना समय लगता है
       // अगर हम वहां कभी नहीं पहुंचे, तो आइए काले रंग को चुनें
      const pix = (i+j*width)*4;
      const norm = map(n, 0, maxiterations, 0, 1);
      let bright = map(sqrt(norm), 0, 1, 0, 255);
      if (n == maxiterations) {
        bright = 0;
      } else {
        // भगवान, अगर हम चाहते तो हम यहाँ फैंसी रंग बना सकते थे
        pixels[pix + 0] = bright;
        pixels[pix + 1] = bright;
        pixels[pix + 2] = bright;
        pixels[pix + 3] = 255;
      }
      x += dx;
    }
    y += dy;
  }
  updatePixels();
}
