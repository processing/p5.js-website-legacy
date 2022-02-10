/*
  * @name वीडियो
  * @frame 710,250
  * @description <p>एक वीडियो को कई फ़ॉर्मैट में लोड करें और खेलने के बीच टॉगल करें
  * और एक बटन प्रेस के साथ रुक गया।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको कम से कम की आवश्यकता होगी
  * एक वीडियो फ़ाइल, और
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>।</span></em></p>
  */
let playing = false;
let fingers;
let button;

function setup() {
  noCanvas();
  // specify multiple formats for different browsers
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  button = createButton('play');
  button.mousePressed(toggleVid); // attach button listener
}

// plays or pauses the video depending on current state
function toggleVid() {
  if (playing) {
    fingers.pause();
    button.html('play');
  } else {
    fingers.loop();
    button.html('pause');
  }
  playing = !playing;
}
