/*
 * @name 이중 랜덤
 * @frame 720,400 (optional)
 * @description random() 호출과 point()함수를 이중으로 사용하여 
 * 불규칙한 톱니 모양의 선을 만듭니다.
 * 원본 제작: 이라 그린버그(Ira Greenberg)
 */
let totalPts = 300;
let steps = totalPts + 1;

function setup() {
  createCanvas(710, 400);
  stroke(255);
  frameRate(1);
}

function draw() {
  background(0);
  let rand = 0;
  for (let i = 1; i < steps; i++) {
    point((width / steps) * i, height / 2 + random(-rand, rand));
    rand += random(-5, 5);
  }
}
