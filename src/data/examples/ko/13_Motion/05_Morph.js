/*
 * @name 변형(morph)
 * @frame 720,400
 * @description 버텍스를 보간하여 한 모양에서 다른 모양으로 바꾸기
 */

// 두 도형의 버텍스들을 저장하는 두 개의 배열 리스트(ArrayList)
// 이 예제는 두 도형이 동일한 개수의 버텍스를 갖고 있다는 것을 전제합니다.
// 즉, 배열 리스트가 동일하다는 뜻입니다.
let circle = [];
let square = [];

// 3번째 버텍스 묶음 저장을 위한 배열 리스트
// 화면상 그려집니다.
let morph = [];

// 이 불리언 변수는 원형이나 사각형으로 변형할지 여부를 결정합니다.
let state = false;

function setup() {
  createCanvas(720, 400);

    // 중심을 가리키는 벡터를 사용하여 원 그리기
  for (let angle = 0; angle < 360; angle += 9) {
    // 주의: 원의 이동 경로와 상응하기 위해, 0에서 시작하지 않습니다.
    let v = p5.Vector.fromAngle(radians(angle - 135));
    v.mult(100);
    circle.push(v);
    // morph 배열 리스트를 빈 PVector로 채웁니다.
    morph.push(createVector());
  }

  // 사각형은 직선을 따라 이어진 여러 개의 버텍스입니다.
  // 사각형 상단
  for (let x = -50; x < 50; x += 10) {
    square.push(createVector(x, -50));
  }
  // 사각형 우측
  for (let y = -50; y < 50; y += 10) {
    square.push(createVector(50, y));
  }
  // 사각형 하단
  for (let x = 50; x > -50; x -= 10) {
    square.push(createVector(x, 50));
  }
  // 사각형 좌측
  for (let y = 50; y > -50; y -= 10) {
    square.push(createVector(-50, y));
  }
}

function draw() {
  background(51);

  // 이 버텍스들이 목표 대상으로부터 얼마나 멀리 있는지 확인
  let totalDistance = 0;

  // 각 버텍스 확인
  for (let i = 0; i < circle.length; i++) {
    let v1;
    // 원형이나 사각형으로 선형 보간합니까?
    if (state) {
      v1 = circle[i];
    } else {
      v1 = square[i];
    }
    // 그려질 버텍스 가져오기
    let v2 = morph[i];
    // 대상을 향해 선형 보간하기
    v2.lerp(v1, 0.1);
    // 목표 대상으로부터 얼마나 멀리 있는지 확인
    totalDistance += p5.Vector.dist(v1, v2);
  }

  // 모든 버텍스들이 가까워지면, 모양 전환
  if (totalDistance < 0.1) {
    state = !state;
  }

  // 중심을 기준으로 그리기
  translate(width / 2, height / 2);
  strokeWeight(4);
  // 모든 버텍스를 구성하는 다각형 그리기
  beginShape();
  noFill();
  stroke(255);

  morph.forEach(v => {
    vertex(v.x, v.y);
  });
  endShape(CLOSE);
}
