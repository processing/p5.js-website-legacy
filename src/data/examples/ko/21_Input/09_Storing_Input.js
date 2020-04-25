/*
 * @name 입력값 저장
 * @description 화면 위로 마우스를 움직여 원들의 위치를 바꿔보세요.
 * 마우스의 위치값들은 배열에 기록되고 매 프레임마다 재생됩니다.
 * 각 프레임이 재생되는 사이, 가장 새로운 값이 배열의 마지막에 더해지고
 * 가장 오래된 값은 삭제됩니다.
 */
let num = 60;
let mx = [];
let my = [];

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255, 153);
  for (let i = 0; i < num; i++) {
    mx.push(i);
    my.push(i);
  }
}

function draw() {
  background(237, 34, 93);

  // 각 프레임마다 다른 입력값을 이용해 배열을 순환
  // 이처럼 모듈로(%)를 사용하면 모든 값들을 이동시키는 것보다 빠릅니다.
  let which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;

  for (let i = 0; i < num; i++) {
    // which+1은 가장 작은 값 (동시에, 배열에서 가장 오래된 값)
    let index = (which + 1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}
