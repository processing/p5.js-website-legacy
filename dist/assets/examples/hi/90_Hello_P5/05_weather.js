/*
  * @name मौसम
  * @frame 720,280
  * @description यह उदाहरण apixu.com से JSON मौसम डेटा प्राप्त करता है।
  * आपको शामिल करने की आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।
*/

// एक हवा की दिशा वेक्टर
let wind;
// सर्कल की स्थिति
let position;

function setup() {
  createCanvas(720, 200);
  // apixu.com से डेटा का अनुरोध करें
  let url = 'https://api.apixu.com/v1/current.json?key=513d8003c8b348f1a2461629162106&q=NYC';
  loadJSON(url, gotWeather);
  // सर्कल बीच में शुरू होता है
  position = createVector(width/2, height/2);
  // हवा शुरू होती है (0,0)
  wind = createVector();
}

function draw() {
  background(200);

  // यह खंड हवा की दिशा की ओर इशारा करते हुए एक तीर खींचता है
  push();
  translate(32, height - 32);
  // हवा के कोण से घुमाएं
  rotate(wind.heading() + PI/2);
  noStroke();
  fill(255);
  ellipse(0, 0, 48, 48);

  stroke(45, 123, 182);
  strokeWeight(3);
  line(0, -16, 0, 16);

  noStroke();
  fill(45, 123, 182);
  triangle(0, -18, -6, -10, 6, -10);
  pop();
  
  // हवा की दिशा में आगे बढ़ें
  position.add(wind);
  
  stroke(0);
  fill(51);
  ellipse(position.x, position.y, 16, 16);

  if (position.x > width)  position.x = 0;
  if (position.x < 0)      position.x = width;
  if (position.y > height) position.y = 0;
  if (position.y < 0)      position.y = height;
}

function gotWeather(weather) {
  
  // कोण प्राप्त करें (रेडियन में कनवर्ट करें)
  let angle = radians(Number(weather.current.wind_degree));
  // हवा की गति प्राप्त करें
  let windmag = Number(weather.current.wind_mph);
  
  // HTML तत्वों के रूप में प्रदर्शित करें
  let temperatureDiv = createDiv(floor(weather.current.temp_f) + '&deg;');
  let windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");
  
  // एक वेक्टर बनाएं
  wind = p5.Vector.fromAngle(angle);
}
