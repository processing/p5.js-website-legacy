/*
 * @name 색상 변수
 * @description (Albers에게 바칩니다.) 이 예제는 색상 조정을 위한 변수 생성 방법을 다룹니다.
 * 이 때, 변수들은 숫자가 아닌 특정 명칭으로 지정됩니다.
 */
function setup() {
  createCanvas(710, 400);
  noStroke();
  background(51, 0, 0);

  let inside = color(204, 102, 0);
  let middle = color(204, 153, 0);
  let outside = color(153, 51, 0);

  // 아래의 변수 선언문은 위의 선언문들과 동일합니다.
  // 둘 중 원하는 형식을 사용하면 됩니다.
  //let inside = color('#CC6600');
  //let middle = color('#CC9900');
  //let outside = color('#993300');

  push();
  translate(80, 80);
  fill(outside);
  rect(0, 0, 200, 200);
  fill(middle);
  rect(40, 60, 120, 120);
  fill(inside);
  rect(60, 90, 80, 80);
  pop();

  push();
  translate(360, 80);
  fill(inside);
  rect(0, 0, 200, 200);
  fill(outside);
  rect(40, 60, 120, 120);
  fill(middle);
  rect(60, 90, 80, 80);
  pop();
}
