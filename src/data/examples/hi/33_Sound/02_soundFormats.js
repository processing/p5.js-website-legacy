/**
 * @name ध्वनि प्रारूप
 * @description <p>तकनीकी रूप से, पेटेंट मुद्दों के कारण, कोई एकल नहीं है
 * ध्वनि प्रारूप जो सभी वेब ब्राउज़र द्वारा समर्थित है। जबकि
 * <a href="http://caniuse.com/#feat=mp3">mp3 समर्थित है</a> पर
 * OS X और Windows पर प्रमुख ब्राउज़रों के नवीनतम संस्करण, उदाहरण के लिए,
 * यह कुछ कम मुख्यधारा के ऑपरेटिंग सिस्टम पर उपलब्ध नहीं हो सकता है और
 * ब्राउज़र।</p>
 *
 * <p>पूर्ण संगतता सुनिश्चित करने के लिए, आप समान ध्वनि फ़ाइल शामिल कर सकते हैं
 * कई स्वरूपों में, उदा। 'sound.mp3' और 'sound.ogg'। (ओग एक है
 * एमपी3 का ओपन सोर्स विकल्प।) आप ऑडियो फाइलों को कन्वर्ट कर सकते हैं
 * वेब अनुकूल प्रारूपों में <a href=" पर नि:शुल्क ऑनलाइन
 * http://media.io/">media.io</a></p>।
 *
 * <p>soundformats() विधि लोडसाउंड को बताती है कि कौन से प्रारूप हैं
 * हमने अपने स्केच के साथ शामिल किया है। फिर, लोडसाउंड होगा
 * द्वारा समर्थित पहले प्रारूप को लोड करने का प्रयास
 * क्लाइंट का वेब ब्राउज़र।</p>
 *
 * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
 * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em>< /पी>
 */
let song;

function preload() {
  // we have included both an .ogg file and an .mp3 file
  soundFormats('ogg', 'mp3');

  // if mp3 is not supported by this browser,
  // loadSound will load the ogg file
  // we have included with our sketch
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);

  // song loaded during preload(), ready to play in setup()
  song.play();
  background(0, 255, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
    // .isPlaying() returns a boolean
    song.pause();
    background(255, 0, 0);
  } else {
    song.play(); // playback will resume from the pause position
    background(0, 255, 0);
  }
}
