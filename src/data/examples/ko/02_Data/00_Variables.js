/*
 * @name 변수
 * @description 변수는 값을 저장하는 데에 사용됩니다. 예제의 변수값을 바꿔 구성을 바꿔보세요.
 */
function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(153);
  strokeWeight(4);
  strokeCap(SQUARE);

  let a = 50;
  let b = 120;
  let c = 180;

  line(a, b, a + c, b);
  line(a, b + 10, a + c, b + 10);
  line(a, b + 20, a + c, b + 20);
  line(a, b + 30, a + c, b + 30);

  a = a + c;
  b = height - b;

  line(a, b, a + c, b);
  line(a, b + 10, a + c, b + 10);
  line(a, b + 20, a + c, b + 20);
  line(a, b + 30, a + c, b + 30);

  a = a + c;
  b = height - b;

  line(a, b, a + c, b);
  line(a, b + 10, a + c, b + 10);
  line(a, b + 20, a + c, b + 20);
  line(a, b + 30, a + c, b + 30);
}
