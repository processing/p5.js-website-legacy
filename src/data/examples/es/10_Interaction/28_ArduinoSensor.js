/*
 * @name Arduino sensor data via WebJack
 * @description WebJack is a way to read data from an Arduino (and other sources)
 * using audio -- it basically turns your Arduino into an audio modem.
 * 
 * https://github.com/publiclab/webjack
 * 
 * Note: WebJack library must be added to your index.html as
 * <pre><code class="language-markup">&lt;script src="https://webjack.io/dist/webjack.js">&lt;/script></code></pre>
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
} 

// Set up the WebJack connection.
// Use default profile: https://github.com/publiclab/webjack/blob/master/src/profiles.js
let profile = WebJack.Profiles["SoftModem"];
let connection = new WebJack.Connection(profile);

// Runs every time a signal is 'heard'
connection.listen(function(data) {
  
  // Draw an ellipse at a height corresponding to the value received from the Arduino (sensor)
  ellipse(400/2, 400 - (data * 5), 20, 20);

});
