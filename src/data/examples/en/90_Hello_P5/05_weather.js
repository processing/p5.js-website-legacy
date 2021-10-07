/*
 * @name Weather
 * @arialabel Uses weather from Metweather website to control a blue arrow and grey circle on the screen. The blue arrow is in a white circle on the bottom left corner and points in the direction of the wind. The small dark grey circle is on a grey background and moves in the window’s direction 
 * @frame 720,280
 * @description This example grabs JSON weather data from www.metaweather.com.
*/

// A wind direction vector
let wind;
// Circle position
let position;

function setup() {
  createCanvas(720, 200);
  // Request the data from metaweather.com
  let url = 'https://cors-anywhere.herokuapp.com/https://www.metaweather.com/api/location/2459115/';
  loadJSON(url,gotWeather);
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
  let weather_today = weather.consolidated_weather[0]
  // Get the angle (convert to radians)
  let angle = radians(Number(weather_today.wind_direction));
  // Get the wind speed
  let windmag = Number(weather_today.wind_speed);
  
  // Display as HTML elements
  let temperatureDiv = createDiv(floor(weather_today.the_temp) + '&deg;C');
  let windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");
  
  // Make a vector
  wind = p5.Vector.fromAngle(angle);
}

