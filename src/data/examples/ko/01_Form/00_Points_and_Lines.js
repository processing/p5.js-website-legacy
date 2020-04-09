/*
<<<<<<< HEAD
 * @name 점과 선
 * @description 점과 선을 활용하여 기본적인 기하 형태를 그릴 수 있습니다.
 * 도형의 크기 조정을 위해 변수인 'd'값을 바꿔보세요.
 * 4개의 변수들은 d값을 기준으로 위치값을 설정합니다.
=======
 * @name Points and Lines
 * @description Points and lines can be used to draw basic geometry.
 * Change the value of the variable 'd' to scale the form. The four
 * variables set the positions based on the value of 'd'.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
function setup() {
  let d = 70;
  let p1 = d;
  let p2 = p1 + d;
  let p3 = p2 + d;
  let p4 = p3 + d;

<<<<<<< HEAD
  // 캔버스 크기를 너비 720픽셀, 높이 720픽셀로 설정
=======
  // Sets the screen to be 720 pixels wide and 400 pixels high
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  createCanvas(720, 400);
  background(0);
  noSmooth();

  translate(140, 0);

<<<<<<< HEAD
  // 회색의 사각형 그리기
=======
  // Draw gray box
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  stroke(153);
  line(p3, p3, p2, p3);
  line(p2, p3, p2, p2);
  line(p2, p2, p3, p2);
  line(p3, p2, p3, p3);

<<<<<<< HEAD
  // 흰색 점들 그리기
=======
  // Draw white points
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  stroke(255);
  point(p1, p1);
  point(p1, p3);
  point(p2, p4);
  point(p3, p1);
  point(p4, p2);
  point(p4, p4);
}
