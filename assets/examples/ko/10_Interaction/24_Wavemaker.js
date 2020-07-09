/*
 * @name 파도 만들기
 * @description 이 예제는 특정 위치에서 진동하는 파티클로 파도를 만드는 법을 다룹니다.
 * 마우스를 움직여 파도의 방향을 바꿔보세요.
 * 기여: 애티쉬 바티아(Aatish Bhatia), 제작: 댄 와이트(Dan Whyte) <a href="https://beesandbombs.tumblr.com/post/45513650541/orbiters">Orbiters</a>
 * 로부터 영감을 받았습니다.
 */

let t = 0; // 시간 변수

function setup() {
  createCanvas(600, 600);
  noStroke();
  fill(40, 200, 40);
}

function draw() {
  background(10, 10); // 불투명한 배경화면(파티클의 꼬리 만들기)

  // 타원형으로 구성된 x와 y 그리드 만들기
  for (let x = 0; x <= width; x = x + 30) {
    for (let y = 0; y <= height; y = y + 30) {
      // 각 타원의 시작 점은 마우스 위치에 따라 달라집니다.
      const xAngle = map(mouseX, 0, width, -4 * PI, 4 * PI, true);
      const yAngle = map(mouseY, 0, height, -4 * PI, 4 * PI, true);
      // 또, 파티클의 위치에 따라 달라집니다.
      const angle = xAngle * (x / width) + yAngle * (y / height);

      // 각 파티클은 동그라미를 그리며 움직입니다.
      const myX = x + 20 * cos(2 * PI * t + angle);
      const myY = y + 20 * sin(2 * PI * t + angle);

      ellipse(myX, myY, 10); // 파티클로 그리기
    }
  }

  t = t + 0.01; // 시간 업데이트
}
