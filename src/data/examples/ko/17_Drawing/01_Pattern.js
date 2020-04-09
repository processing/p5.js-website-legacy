/*
<<<<<<< HEAD
 * @name 패턴들
 * @description 캔버스 위로 마우스를 움직여 드로잉할 수 있는 소프트웨어 툴입니다.
 * 이 때, 드로잉은 마우스의 속도에 반응합니다.
=======
 * @name Patterns
 * @description Move the cursor over the image to draw with a software tool
 * which responds to the speed of the mouse.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
function setup() {
  createCanvas(710, 400);
  background(102);
}

function draw() {
<<<<<<< HEAD
  // variableEllipse()메소드를 호출하고, 여기에
  // 마우스의 현재 및 이전 위치를 담은 매개 변수를 보냅니다.
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

// 이 간단한 메소드 variableEllipse()는 이 프로그램을 위해
// 작성되었습니다. 메소드는 마우스의 속도를 계산하는데,
// 마우스가 천천히 움직이면 작은 타원을,
// 마우스가 빨리 움직이면 큰 타원을 그립니다.
=======
  // Call the variableEllipse() method and send it the
  // parameters for the current mouse position
  // and the previous mouse position
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

// The simple method variableEllipse() was created specifically
// for this program. It calculates the speed of the mouse
// and draws a small ellipse if the mouse is moving slowly
// and draws a large ellipse if the mouse is moving quickly
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function variableEllipse(x, y, px, py) {
  let speed = abs(x - px) + abs(y - py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}
