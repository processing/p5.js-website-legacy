/*
 * @name 점과 선
 * @description 점과 선을 활용하여 기본적인 기하 형태를 그릴 수 있습니다.
 * 도형의 크기 조정을 위해 변수인 'd'값을 바꿔보세요.
 * 4개의 변수들은 d값을 기준으로 위치값을 설정합니다.
 */
function setup() {
  let d = 70;
  let p1 = d;
  let p2 = p1 + d;
  let p3 = p2 + d;
  let p4 = p3 + d;

  // 캔버스 크기를 너비 720픽셀, 높이 720픽셀로 설정
  createCanvas(720, 400);
  background(0);
  noSmooth();

  translate(140, 0);

  // 회색의 사각형 그리기
  stroke(153);
  line(p3, p3, p2, p3);
  line(p2, p3, p2, p2);
  line(p2, p2, p3, p2);
  line(p3, p2, p3, p3);

  // 흰색 점들 그리기
  stroke(255);
  point(p1, p1);
  point(p1, p3);
  point(p2, p4);
  point(p3, p1);
  point(p4, p2);
  point(p4, p4);
}
