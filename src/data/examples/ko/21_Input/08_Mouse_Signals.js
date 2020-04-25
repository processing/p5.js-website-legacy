/*
 * @name 마우스 신호
 * @description 마우스를 움직이고 클릭하여 신호를 만들어보세요.
 * 상단의 행은 "mouseX", 가운데 행은 "mouseY",
 * 하단의 행은 "mouseIsPressed"에 대한 신호입니다.
  */
let xvals = [];
let yvals = [];
let bvals = [];

function setup() {
  createCanvas(720, 400);
  strokeWeight(2);
}

function draw() {
  background(237, 34, 93);

  for (let i = 1; i < width; i++) {
    xvals[i - 1] = xvals[i];
    yvals[i - 1] = yvals[i];
    bvals[i - 1] = bvals[i];
  }
  // 배열의 마지막에 새로운 값들 더하기
  xvals[width - 1] = mouseX;
  yvals[width - 1] = mouseY;

  if (mouseIsPressed) {
    bvals[width - 1] = 0;
  } else {
    bvals[width - 1] = 255;
  }

  fill(255);
  noStroke();
  rect(0, height / 3, width, height / 3 + 1);

  for (let i = 1; i < width; i++) {
    stroke(255);
    point(i, xvals[i] / 3);
    stroke(0);
    point(i, height / 3 + yvals[i] / 3);
    stroke(255);
    line(
      i,
      (2 * height) / 3 + bvals[i] / 3,
      i,
      (2 * height) / 3 + bvals[i - 1] / 3
    );
  }
}
