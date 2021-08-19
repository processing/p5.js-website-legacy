/*
  * @name Arduino सेंसर डेटा WebJack के माध्यम से
  * @description WebJack एक Arduino (और अन्य स्रोतों) से डेटा पढ़ने का एक तरीका है
  * ऑडियो का उपयोग करना - यह मूल रूप से आपके Arduino को एक ऑडियो मॉडेम में बदल देता है।
  *
  * https://github.com/publiclab/webjack
  *
  * नोट: WebJack और p5-webjack लाइब्रेरी को आपके index.html में निम्नानुसार जोड़ा जाना चाहिए:
  * <pre><code class="language-markup">&lt;script src="https://webjack.io/dist/webjack.js">&lt;/script></code></pre>
  * <pre><code class="language-markup">&lt;script src="https://jywarren.github.io/p5-webjack/lib.js">&lt;/script></code></ पूर्व>
  *
  * कार्य उदाहरण: https://editor.p5js.org/jywarren/sketches/rkztwSt8M
  *
  * परीक्षण ऑडियो: https://www.youtube.com/watch?v=GtJW1Dlt3cg
  * इस स्केच को एक Arduino पर लोड करें:
  * https://create.arduino.cc/editor/jywarren/023158d8-be51-4c78-99ff-36c63126b554/preview
  * Arduino पिन 3 + ग्राउंड से ऑडियो आउटपुट करेगा। माइक्रोफ़ोन या ऑडियो केबल का उपयोग करें।
  */

function setup() { 
  createCanvas(400, 400);
  noStroke();
  fill('#ff00aa22');
  receiveSensorData(handleData);
}

function handleData(data, connection) {

  console.log(data); // output the values to log
  // data[0] is the 1st value, data[1] 2nd, etc.

  // draw stuff! Browse http://p5js.org/reference/
  background('#ddd');
  ellipse(100, 200, data[0]+10, data[0]+10);

  // connection.send('send data back to the Arduino if its listening');
}
