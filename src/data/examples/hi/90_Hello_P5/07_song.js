/*
  * @name गीत
  * @frame 720, 430
  * @description एक गाना बजाएं।
  * आपको शामिल करने की आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound
  * पुस्तकालय</a> इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।
  */
// एक पैमाने के मिडी नोट
let notes = [ 60, 62, 64, 65, 67, 69, 71];

// स्वचालित रूप से गाना बजाने के लिए
let index = 0;
let song = [
  { note: 4, duration: 400, display: "D" },
  { note: 0, duration: 200, display: "G" },
  { note: 1, duration: 200, display: "A" },
  { note: 2, duration: 200, display: "B" },
  { note: 3, duration: 200, display: "C" },
  { note: 4, duration: 400, display: "D" },
  { note: 0, duration: 400, display: "G" },
  { note: 0, duration: 400, display: "G" }
];
let trigger = 0;
let autoplay = false;
let osc;

function setup() {
  createCanvas(720, 400);
  let div = createDiv("Click to play notes or ")
  div.id("instructions");
  let button = createButton("play song automatically.");
  button.parent("instructions");
  // ट्रिगर स्वचालित रूप से खेल रहा है
  button.mousePressed(function() {
    if (!autoplay) {
      index = 0;
      autoplay = true;
    }
  });

  // एक त्रिकोण थरथरानवाला
  osc = new p5.TriOsc();
  // शुरू करें
  osc.start();
  osc.amp(0);
}

// एक नोट खेलने के लिए एक समारोह
function playNote(note, duration) {
  osc.freq(midiToFreq(note));
  // इसे फीका करें
  osc.fade(0.5,0.2);

  // यदि हम एक अवधि निर्धारित करते हैं, तो इसे फीका कर दें
  if (duration) {
    setTimeout(function() {
      osc.fade(0,0.2);
    }, duration-50);
  }
}

function draw() {

  // यदि हम ऑटोप्ले कर रहे हैं और यह अगले नोट के लिए समय है
  if (autoplay && millis() > trigger){
    playNote(notes[song[index].note], song[index].duration);
    trigger = millis() + song[index].duration;
    // अगले नोट पर जाएं
    index ++;
   // हम अंत में हैं, ऑटोप्ले करना बंद करें।
  } else if (index >= song.length) {
    autoplay = false;
  }


  // एक कीबोर्ड बनाएं

   // प्रत्येक कुंजी की चौड़ाई
  let w = width / notes.length;
  for (let i = 0; i < notes.length; i++) {
    let x = i * w;
    // यदि माउस कुंजी के ऊपर है
    if (mouseX > x && mouseX < x + w && mouseY < height) {
      // अगर हम क्लिक कर रहे हैं
      if (mouseIsPressed) {
        fill(100,255,200);
       // या बस लुढ़कना
      } else {
        fill(127);
      }
    } else {
      fill(200);
    }

    // या अगर हम गाना बजा रहे हैं, तो इसे भी हाइलाइट करें
    if (autoplay && i === song[index-1].note) {
      fill(100,255,200);
    }

    // कुंजी ड्रा करें
    rect(x, 0, w-1, height-1);
  }

}

// जब हम क्लिक करते हैं
function mousePressed(event) {
  if(event.button == 0 && event.clientX < width && event.clientY < height) {
    // माउस को प्रमुख इंडेक्स पर मैप करें
    let key = floor(map(mouseX, 0, width, 0, notes.length));
    playNote(notes[key]);
  }
}

// जब हम रिलीज करते हैं तो इसे फीका कर दें
function mouseReleased() {
  osc.fade(0,0.5);
}
