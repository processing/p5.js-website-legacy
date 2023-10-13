/*
 * @name 변수 범위
 * @description 변수는 '전역(global) 변수'로서 선언되거나, 그 적용 범위를 조정하여 '지역(local) 변수'로 사용할 수 있습니다.
 * 예를 들어, setup() 및 draw()함수 안에 선언된 변수들은 해당 함수들의 범위 내에서만 사용되는 '지역 변수'가 됩니다.
 * '전역 변수'의 경우, setup() 및 draw()함수 범위 외에서도 사용 가능합니다.
 * 어떤 함수의 '지역 변수'가 '전역 변수'와 동일한 이름으로 선언된 경우,
 * 이 변수는 해당 함수에 한해 지역 변수로서 처리됩니다.
 */
let a = 80; // 전역 변수 "a" 생성하기

function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);
  noLoop();
}

function draw() {
  // 전역 변수 a를 사용하여 선 그리기
  line(a, 0, a, height);

  // 반복문 안에 지역 변수 a를 사용하기
  for (let a = 120; a < 200; a += 3) {
    line(a, 0, a, height);
  }

  // 사용자가 만든 함수 drawAnotherLine() 호출하기
  drawAnotherLine();

  // 사용자가 만든 함수 drawYetAnotherLine() 호출하기
  drawYetAnotherLine();
}

function drawAnotherLine() {
  // 이 함수에 대한 지역 변수로서 새로운 a 선언하기
  let a = 320;
  // 지역 변수 a를 사용하여 선 그리기  line(a, 0, a, height);
  line(a, 0, a, height);
}

function drawYetAnotherLine() {
  // 새로운 지역 변수 a를 선언하지 않았으므로,
  // 이 선은 위에서 선언된 전역 변수 a(값 80)를 사용하여 그려집니다.
  line(a + 3, 0, a + 3, height);
}
