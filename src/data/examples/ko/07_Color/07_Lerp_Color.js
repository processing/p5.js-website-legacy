/*
 * @name 선형 보간(lerp) 색상
 * @description 무작위의 도형을 반복하고,
 * 빨강색과 파란색을 선형적으로 보간합니다.
 */
function setup() {
  createCanvas(720, 400);
  background(255);
  noStroke();
}

function draw() {
  background(255);
  from = color(255, 0, 0, 0.2 * 255);
  to = color(0, 0, 255, 0.2 * 255);
  c1 = lerpColor(from, to, 0.33);
  c2 = lerpColor(from, to, 0.66);
  for (let i = 0; i < 15; i++) {
    fill(from);
    quad(
      random(-40, 220), random(height),
      random(-40, 220), random(height),
      random(-40, 220), random(height),
      random(-40, 220), random(height)
    );
    fill(c1);
    quad(
      random(140, 380), random(height),
      random(140, 380), random(height),
      random(140, 380), random(height),
      random(140, 380), random(height)
    );
    fill(c2);
    quad(
      random(320, 580), random(height),
      random(320, 580), random(height),
      random(320, 580), random(height),
      random(320, 580), random(height)
    );
    fill(to);
    quad(
      random(500, 760), random(height),
      random(500, 760), random(height),
      random(500, 760), random(height),
      random(500, 760), random(height)
    );
  }
  frameRate(5);
}
