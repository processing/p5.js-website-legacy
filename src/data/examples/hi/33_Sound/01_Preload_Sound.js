/*
  * @name प्रीलोड साउंडफाइल
  * @description  loadsound() के दौरान preload() कॉल करें यह सुनिश्चित करने के लिए कि
  * setup() कहे जाने से पहले ध्वनि पूरी तरह से भरी हुई है। यह हमेशा के लिए सबसे अच्छा है
  * preload() में loadsound() को कॉल करें, अन्यथा ध्वनियों को लोड करने की आवश्यकता नहीं होगी
  * जब तक आप उन्हें अपने स्केच में खेलना चाहें।
  *
  * <br><br><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em>
  */

let song;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);
  song.loop(); // गाना सेटअप के दौरान चलने के लिए तैयार है () क्योंकि यह प्रीलोड के दौरान लोड किया गया था
  background(0, 255, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
    // .isPlaying () एक बूलियन लौटाता है
    song.pause(); // .play() .pause() स्थिति से फिर से शुरू होगा
    background(255, 0, 0);
  } else {
    song.play();
    background(0, 255, 0);
  }
}
