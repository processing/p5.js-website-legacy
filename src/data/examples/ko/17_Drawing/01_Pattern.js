/*
 * @name 패턴
 * @description 캔버스 위로 마우스를 움직여 드로잉할 수 있는 소프트웨어 툴입니다.
 * 이 때, 드로잉은 마우스의 속도에 반응합니다.
 */
function setup() {
  createCanvas(710, 400);
  background(102);
}

function draw() {
  // variableEllipse()메소드를 호출하고, 여기에
  // 마우스의 현재 및 이전 위치를 담은 매개 변수를 보냅니다.
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

// 이 간단한 메소드 variableEllipse()는 이 프로그램을 위해
// 작성되었습니다. 메소드는 마우스의 속도를 계산하는데,
// 마우스가 천천히 움직이면 작은 타원을,
// 마우스가 빨리 움직이면 큰 타원을 그립니다.

function variableEllipse(x, y, px, py) {
  let speed = abs(x - px) + abs(y - py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}
