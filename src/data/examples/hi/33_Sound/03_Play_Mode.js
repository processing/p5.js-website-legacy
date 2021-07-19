/*
  * @name प्ले मोड
  * @description
  * <p>'सस्टेनेबल' मोड में, ध्वनि अपने आप ओवरलैप हो जाएगी।
  * 'पुनरारंभ' मोड में यह रुक जाएगा और फिर से शुरू होगा।
  * ध्वनि फ़ाइल चलाने के लिए माउस क्लिक करें।
  * एक बार में बहुत सारी आवाज़ें ट्रिगर करें! प्लेमोड बदलने के लिए कोई भी कुंजी दबाएं।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em>< /पी>
  */
let playMode = 'sustain';
let sample;

function setup() {
  createCanvas(710, 50);
  soundFormats('mp3', 'ogg');
  sample = loadSound('assets/Damscray_-_Dancing_Tiger_02.mp3');
}

function draw() {
  background(255, 255, 0);
  let str = 'Click here to play! Press key to toggle play mode.';
  str += ' Current Play Mode: ' + playMode + '.';
  text(str, 10, height / 2);
}

function mouseClicked() {
  sample.play();
}
function keyPressed(k) {
  togglePlayMode();
}

function togglePlayMode() {
  if (playMode === 'sustain') {
    playMode = 'restart';
  } else {
    playMode = 'sustain';
  }
  sample.playMode(playMode);
}
