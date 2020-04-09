/*
<<<<<<< HEAD
 * @name 날씨
 * @frame 720,280
 * @description 이 예제는 apixu.com로부터 JSON 날씨 데이터를 받아옵니다.
 * 로컬 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>
 * 를 추가해야 됩니다.
*/

// 풍향 벡터
let wind;
// 원의 위치
=======
 * @name Weather
 * @frame 720,280
 * @description This example grabs JSON weather data from apixu.com.
 * You will need to include the 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>
 * for this example to work in your own project.
*/

// A wind direction vector
let wind;
// Circle position
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let position;

function setup() {
  createCanvas(720, 200);
<<<<<<< HEAD
  // apixu.com에 데이터 요청하기
  let url = 'https://api.apixu.com/v1/current.json?key=513d8003c8b348f1a2461629162106&q=NYC';
  loadJSON(url, gotWeather);
  // 화면의 가운데에서 원그리기 시작
  position = createVector(width/2, height/2);
  // 바람은 (0,0)에서 시작
=======
  // Request the data from apixu.com
  let url = 'https://api.apixu.com/v1/current.json?key=513d8003c8b348f1a2461629162106&q=NYC';
  loadJSON(url, gotWeather);
  // Circle starts in the middle
  position = createVector(width/2, height/2);
  // wind starts as (0,0)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  wind = createVector();
}

function draw() {
  background(200);

<<<<<<< HEAD
  // 이 섹션에서는 풍향을 나타내는 화살표를 그립니다.
  push();
  translate(32, height - 32);
  // 바람의 각도에 따라 회전하기
=======
  // This section draws an arrow pointing in the direction of wind
  push();
  translate(32, height - 32);
  // Rotate by the wind's angle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
  
<<<<<<< HEAD
  // 풍향에 따라 움직이기
=======
  // Move in the wind's direction
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
  
<<<<<<< HEAD
  // 각도 받아오기 (래디언으로 변환)
  let angle = radians(Number(weather.current.wind_degree));
  // 풍속 받아오기
  let windmag = Number(weather.current.wind_mph);
  
  // HTML요소로 화면에 보이기
  let temperatureDiv = createDiv(floor(weather.current.temp_f) + '&deg;');
  let windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");
  
  // 벡터 생성하기
=======
  // Get the angle (convert to radians)
  let angle = radians(Number(weather.current.wind_degree));
  // Get the wind speed
  let windmag = Number(weather.current.wind_mph);
  
  // Display as HTML elements
  let temperatureDiv = createDiv(floor(weather.current.temp_f) + '&deg;');
  let windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");
  
  // Make a vector
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  wind = p5.Vector.fromAngle(angle);
}
