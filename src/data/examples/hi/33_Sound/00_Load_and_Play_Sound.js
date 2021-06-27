/*
  * @name लोड और प्ले साउंड
  * @description प्रीलोड के दौरान ध्वनि लोड करें ()। कैनवास पर क्लिक करने पर ध्वनि बजाएं।
  * <br><br><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em>
  */
let song;

function setup() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
  createCanvas(720, 200);
  background(255, 0, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
    // .isPlaying () एक बूलियन लौटाता है
    song.stop();
    background(255, 0, 0);
  } else {
    song.play();
    background(0, 255, 0);
  }
}
