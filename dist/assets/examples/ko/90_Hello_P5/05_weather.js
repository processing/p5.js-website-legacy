/*
 * @name 날씨
 * @frame 720,280
 * @description 이 예제는 www.metaweather.com로부터 JSON 날씨 데이터를 받아옵니다.
 * 로컬 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>
 * 를 추가해야 됩니다.
*/

// 풍향 벡터
let wind;
// 원의 위치
let position;

function setup() {
  createCanvas(720, 200);
  // www.metaweather.com에 데이터 요청하기
  let url = 'https://cors-anywhere.herokuapp.com/https://www.metaweather.com/api/location/2459115/';
  loadJSON(url, gotWeather);
  // 화면의 가운데에서 원그리기 시작
  position = createVector(width/2, height/2);
  // 바람은 (0,0)에서 시작
  wind = createVector();
}

function draw() {
  background(200);

  // 이 섹션에서는 풍향을 나타내는 화살표를 그립니다.
  push();
  translate(32, height - 32);
  // 바람의 각도에 따라 회전하기
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
  
  // 풍향에 따라 움직이기
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
  // 각도 받아오기 (래디언으로 변환)
  let angle = radians(Number(weather_today.wind_direction));
  // 풍속 받아오기
  let windmag = Number(weather_today.wind_speed);
  
  // HTML요소로 화면에 보이기
  let temperatureDiv = createDiv(floor(weather_today.the_temp) + '&deg;C');
  let windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");
  
  // 벡터 생성하기
  wind = p5.Vector.fromAngle(angle);
}
