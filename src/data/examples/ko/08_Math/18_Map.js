/*
<<<<<<< HEAD
 * @name 매핑(map)
 * @description map()함수 사용하면 그 어떠한 숫자든 여러분의 프로젝트에 더 많은 도움이 될
 * 숫자로 매핑됩니다.
 * 예를 들어, 마우스 위치값을 사용하여 도형의 크기와 색상을 조정할 수 있습니다.
 * 이 예제에서는 마우스의 x 좌표(0과 360사이의 숫자)가 원형의 색상과 크기를 정의하는 새로운 숫자들로 처리됩니다.
=======
 * @name Map
 * @description Use the map() function to take any number and scale it to a
 * new number that is more useful for the project that you are working on.
 * For example, use the numbers from the mouse position to control the size or color of a shape.
 * In this example, the mouse’s x-coordinate (numbers between 0 and 360) are scaled to new numbers
 * to define the color and size of a circle.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
function setup() {
  createCanvas(640, 400);
  noStroke();
}

function draw() {
  background(0);
<<<<<<< HEAD
  // 0부터 640에 이르는 mouseX 값을 0부터 175의 범위로 조정
  let c = map(mouseX, 0, width, 0, 175);
  // 0부터 640에 이르는 mouseX 값을 40부터 300의 범위로 조정
=======
  // Scale the mouseX value from 0 to 640 to a range between 0 and 175
  let c = map(mouseX, 0, width, 0, 175);
  // Scale the mouseX value from 0 to 640 to a range between 40 and 300
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);
}
