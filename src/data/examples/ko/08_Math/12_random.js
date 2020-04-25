/*
 * @name 랜덤
 * @description 난수(random number)에 근간을 둔 이미지입니다.
 * 프로그램이 불러오기될 때마다 결과가 달라집니다.
 */
function setup() {
  createCanvas(710, 400);
  background(0);
  strokeWeight(20);
  frameRate(2);
}

function draw() {
  for (let i = 0; i < width; i++) {
    let r = random(255);
    stroke(r);
    line(i, 0, i, height);
  }
}
