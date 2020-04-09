/*
<<<<<<< HEAD
 * @name 좌표
 * @description 모든 도형들은 좌표값으로 지정된 화면 위치에 나타납니다.
 * 픽셀 단위를 기준으로 원점(0,0)으로부터의 거리 
 * 모든 좌표값은 원점으로부터의 거리를 픽셀 단위로 측정합니다.
 * 원점 [0,0]는 화면 좌측 상단의 좌표이며, 우측 하단의 좌표는 [너비-1, 높이-1]에 해당합니다.
 */
function setup() {
  // 캔버스 크기를 너비 720픽셀, 높이 720픽셀로 설정
=======
 * @name Coordinates
 * @description All shapes drawn to the screen have a position that is
 * specified as a coordinate. All coordinates are measured as the distance from
 * the origin in units of pixels. The origin [0, 0] is the coordinate in the
 * upper left of the window and the coordinate in the lower right is [width-1,
 * height-1].
 */
function setup() {
  // Sets the screen to be 720 pixels wide and 400 pixels high
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  createCanvas(720, 400);
}

function draw() {
<<<<<<< HEAD
  // 배경색을 검정색(0)으로 지정, noFill()로 면채우기 기능 해제
  background(0);
  noFill();
    
  // point()의 괄호 안 두 인수로 좌표값 지정
  // 첫번째 인수는 x값을, 두번째 인수는 y값 의미
=======
  // Set the background to black and turn off the fill color
  background(0);
  noFill();

  // The two parameters of the point() method each specify
  // coordinates.
  // The first parameter is the x-coordinate and the second is the Y
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  stroke(255);
  point(width * 0.5, height * 0.5);
  point(width * 0.5, height * 0.25);

<<<<<<< HEAD
  // 좌표를 활용해 점 뿐 아니라 모든 도형을 그릴 수 있습니다.
  // 각 함수별 괄호에 적힌 매개 변수들은 각기 다른 목적을 위해 사용됩니다.
  // 예를들어 line()함수에 쓰인 처음 두 매개 변수들은 각각 첫번째 그리고 두번째 끝점을 지정합니다.
  stroke(0, 153, 255);
  line(0, height * 0.33, width, height * 0.33);

  // rect()함수의 처음 두 매개 변수는 상단 모서리의 좌표값을 의미하고,
  // 그 다음 두 매개 변수는 너비와 높이를 지정합니다.
=======
  // Coordinates are used for drawing all shapes, not just points.
  // Parameters for different functions are used for different
  // purposes. For example, the first two parameters to line()
  // specify the coordinates of the first endpoint and the second
  // two parameters specify the second endpoint
  stroke(0, 153, 255);
  line(0, height * 0.33, width, height * 0.33);

  // By default, the first two parameters to rect() are the
  // coordinates of the upper-left corner and the second pair
  // is the width and height
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  stroke(255, 153, 0);
  rect(width * 0.25, height * 0.1, width * 0.5, height * 0.8);
}
