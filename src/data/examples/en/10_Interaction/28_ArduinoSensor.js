/*
 * @name Arduino sensor data via WebJack
 * @description WebJack is a way to read data from an Arduino (and other sources)
 * using audio -- it basically turns your Arduino into an audio modem.
 * 
 * https://github.com/publiclab/webjack
 * 
 * Note: WebJack and p5-webjack libraries must be added to your index.html as follows:
 * <pre><code class="language-markup">&lt;script src="https://webjack.io/dist/webjack.js">&lt;/script></code></pre>
 * <pre><code class="language-markup">&lt;script src="https://jywarren.github.io/p5-webjack/lib.js">&lt;/script></code></pre>
 * 
 * Working example: https://editor.p5js.org/jywarren/sketches/rkztwSt8M
 * 
 * Testing audio: https://www.youtube.com/watch?v=GtJW1Dlt3cg
 * Load this sketch onto an Arduino: 
 * https://create.arduino.cc/editor/jywarren/023158d8-be51-4c78-99ff-36c63126b554/preview
 * Arduino will output audio from pin 3 + ground. Use microphone or an audio cable.
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
