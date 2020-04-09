/*
<<<<<<< HEAD
 * @name 팔모양
 * @description 이 예제는 변환 행렬을 사용하여 팔모양을 만듭니다.
 * 각 선분의 각도는 mouseX 및 mouseY 위치로 조정됩니다.
 * 첫 번째 선분에 적용된 변환은 두 번째 선분에도 적용됩니다.
 * 두 선분 모두 동일한 push() 및 pop() 행렬 그룹에 속하기 때문입니다.
=======
 * @name Arm
 * @description This example uses transform matrices to create
 * an arm. The angle of each segment is controlled with the
 * mouseX and mouseY position. The transformations applied to
 * the first segment are also applied to the second segment
 * because they are inside the same push() and
 * pop() matrix group.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let x, y;
let angle1 = 0.0;
let angle2 = 0.0;
let segLength = 100;

function setup() {
  createCanvas(720, 400);
  strokeWeight(30);

<<<<<<< HEAD
  //반 투명한 선 그리기
  stroke(255, 160);

  //팔의 "어깨" 위치를 캔버스 중앙에 위치시키기
=======
  //Stroke with a semi-transparent white
  stroke(255, 160);

  //Position the "shoulder" of the arm in the center of the canvas
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  x = width * 0.5;
  y = height * 0.5;
}

function draw() {
  background(0);

<<<<<<< HEAD
  //마우스 위치에 따라 선분의 각도 바꾸기
  angle1 = (mouseX / float(width) - 0.5) * -TWO_PI;
  angle2 = (mouseY / float(height) - 0.5) * PI;

  // push와 pop을 사용해 변환을 "contain"하기
  // 사용자 정의 함수를 사용해 선분을 그려도
  // 변환 내용이 축적되는 걸 볼 수 있습니다.
=======
  //Change the angle of the segments according to the mouse positions
  angle1 = (mouseX / float(width) - 0.5) * -TWO_PI;
  angle2 = (mouseY / float(height) - 0.5) * PI;

  //use push and pop to "contain" the transforms. Note that
  // even though we draw the segments using a custom function,
  // the transforms still accumulate
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  push();
  segment(x, y, angle1);
  segment(segLength, 0, angle2);
  pop();
}

<<<<<<< HEAD
// 선분을 그리기 위한 사용자 정의 함수
=======
//a custom function for drawing segments
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function segment(x, y, a) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}
