/*
<<<<<<< HEAD
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
=======
 * @name Morph
 * @frame 720,400
 * @description Changing one shape into another by interpolating vertices from one to another.
 */

// Two ArrayLists to store the vertices for two shapes
// This example assumes that each shape will have the same
// number of vertices, i.e. the size of each ArrayList will be the same
let circle = [];
let square = [];

// An ArrayList for a third set of vertices, the ones we will be drawing
// in the window
let morph = [];

// This boolean variable will control if we are morphing to a circle or square
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let state = false;

function setup() {
  createCanvas(720, 400);

<<<<<<< HEAD
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
=======
  // Create a circle using vectors pointing from center
  for (let angle = 0; angle < 360; angle += 9) {
    // Note we are not starting from 0 in order to match the
    // path of a circle.
    let v = p5.Vector.fromAngle(radians(angle - 135));
    v.mult(100);
    circle.push(v);
    // Let's fill out morph ArrayList with blank PVectors while we are at it
    morph.push(createVector());
  }

  // A square is a bunch of vertices along straight lines
  // Top of square
  for (let x = -50; x < 50; x += 10) {
    square.push(createVector(x, -50));
  }
  // Right side
  for (let y = -50; y < 50; y += 10) {
    square.push(createVector(50, y));
  }
  // Bottom
  for (let x = 50; x > -50; x -= 10) {
    square.push(createVector(x, 50));
  }
  // Left side
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let y = 50; y > -50; y -= 10) {
    square.push(createVector(-50, y));
  }
}

function draw() {
  background(51);

<<<<<<< HEAD
  // 이 버텍스들이 목표 대상으로부터 얼마나 멀리 있는지 확인
  let totalDistance = 0;

  // 각 버텍스 확인
  for (let i = 0; i < circle.length; i++) {
    let v1;
    // 원형이나 사각형으로 선형 보간합니까?
=======
  // We will keep how far the vertices are from their target
  let totalDistance = 0;

  // Look at each vertex
  for (let i = 0; i < circle.length; i++) {
    let v1;
    // Are we lerping to the circle or square?
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    if (state) {
      v1 = circle[i];
    } else {
      v1 = square[i];
    }
<<<<<<< HEAD
    // 그려질 버텍스 가져오기
    let v2 = morph[i];
    // 대상을 향해 선형 보간하기
    v2.lerp(v1, 0.1);
    // 목표 대상으로부터 얼마나 멀리 있는지 확인
    totalDistance += p5.Vector.dist(v1, v2);
  }

  // 모든 버텍스들이 가까워지면, 모양 전환
=======
    // Get the vertex we will draw
    let v2 = morph[i];
    // Lerp to the target
    v2.lerp(v1, 0.1);
    // Check how far we are from target
    totalDistance += p5.Vector.dist(v1, v2);
  }

  // If all the vertices are close, switch shape
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (totalDistance < 0.1) {
    state = !state;
  }

<<<<<<< HEAD
  // 중심을 기준으로 그리기
  translate(width / 2, height / 2);
  strokeWeight(4);
  // 모든 버텍스를 구성하는 다각형 그리기
=======
  // Draw relative to center
  translate(width / 2, height / 2);
  strokeWeight(4);
  // Draw a polygon that makes up all the vertices
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  beginShape();
  noFill();
  stroke(255);

  morph.forEach(v => {
    vertex(v.x, v.y);
  });
  endShape(CLOSE);
}
