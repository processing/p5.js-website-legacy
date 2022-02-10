/**
 * @name Mic Input
 * @description <p>Get audio input from your computer's microphone.
 * Make noise to float the ellipse.</p>
 * <p>Note: p5.AudioIn contains its own p5.Amplitude object,
 * so you can call getLevel on p5.AudioIn without
 * creating a p5.Amplitude.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
let mic;

function setup() {
  createCanvas(710, 200);

  // एक ऑडियो इनपुट बनाएं
  mic = new p5.AudioIn();

   // ऑडियो इनपुट शुरू करें।
   // डिफ़ॉल्ट रूप से, यह .connect() (कंप्यूटर स्पीकर के लिए) नहीं करता है
  mic.start();
}

function draw() {
  background(200);

  // कुल मात्रा प्राप्त करें (0 और 1.0 के बीच)
  let vol = mic.getLevel();
  fill(127);
  stroke(0);

  // आयतन के आधार पर ऊंचाई के साथ एक दीर्घवृत्त बनाएं
  let h = map(vol, 0, 1, height, 0);
  ellipse(width / 2, h - 25, 50, 50);
}
