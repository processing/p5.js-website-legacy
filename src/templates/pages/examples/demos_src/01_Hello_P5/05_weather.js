/*
 * @name Weather
 * @frame 720,280
 * @description This example grabs JSON weather data from openweathermap.org.
 * You will need to include the 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>
 * for this example to work in your own project.
*/

// A wind direction vector
var wind;
// Circle position
var position;

function setup() {
  createCanvas(720, 200);
  // Request the data from openweathermap
  loadJSON('http://api.openweathermap.org/data/2.5/weather?q=New%20York,NY&units=imperial', gotWeather);
  // Circle starts in the middle
  position = createVector(width/2, height/2);
  // wind starts as (0,0)
  wind = createVector();
}

function draw() {
  background(200);

  // This section draws an arrow pointing in the direction of wind
  push();
  translate(32, height - 32);
  // Rotate by the wind's angle
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
  
  // Move in the wind's direction
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
  
  // Get the angle (convert to radians)
  var angle = radians(Number(weather.wind.deg));
  // Get the wind speed
  var windmag = Number(weather.wind.speed);
  
  // Display as HTML elements
  var temperatureDiv = createDiv(floor(weather.main.temp) + '&deg;');
  var windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");
  
  // Make a vector
  wind = p5.Vector.fromAngle(angle);
}
