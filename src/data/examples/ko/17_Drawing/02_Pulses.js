/*
 * @name 율동
 * @description 드로잉 스포트웨어는 특정 리듬이나, 그려진 제스쳐로부터 독립된 규칙을 따를 수 있습니다.
 * 이 예제의 경우, 협업 드로잉으로도 볼 수 있습니다.
 * 사용자가 이미지의 일부를 조정하면 소프트웨어가 다른 일부를 조정하는 식입니다.
 */
let angle = 0;

function setup() {
  createCanvas(710, 400);
  background(102);
  noStroke();
  fill(0, 102);
}

function draw() {
  // 마우스가 클릭될 때만 그리기
  if (mouseIsPressed === true) {
    angle += 5;
    let val = cos(radians(angle)) * 12.0;
    for (let a = 0; a < 360; a += 75) {
      let xoff = cos(radians(a)) * val;
      let yoff = sin(radians(a)) * val;
      fill(0);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    }
    fill(255);
    ellipse(mouseX, mouseY, 2, 2);
  }
}
