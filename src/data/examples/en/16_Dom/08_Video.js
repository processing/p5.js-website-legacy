/*
 * @name Video
 * @arialabel Video of fingers walking 
 * @frame 710,250
 * @description Load a video with multiple formats and toggle between playing
 * and paused with a button press.
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
