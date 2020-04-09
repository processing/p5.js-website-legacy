/*
<<<<<<< HEAD
 * @name 비직각 반사
 * @frame 710,400 (optional)
 * @description 이 예제는 processing.org/examples의 "Reflection 1" 예제를 데이비드 블리츠(David Blitz)가 옮긴 것입니다.
 */

// 바닥의 왼쪽 위치
let base1;

// 바닥의 오른쪽 위치
let base2;
// 바닥의 길이
//let baseLength;

// 움직이는 공에 대한 변수들
=======
 * @name Non Orthogonal Reflection
 * @frame 710,400 (optional)
 * @description This is a port by David Blitz of the "Reflection 1" example from processing.org/examples
 */

//Position of left hand side of floor
let base1;

//Position of right hand side of floor
let base2;
//Length of floor
//let baseLength;

// Variables related to moving ball
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let position;
let velocity;
let r = 6;
let speed = 3.5;

function setup() {
  createCanvas(710, 400);

  fill(128);
  base1 = createVector(0, height - 150);
  base2 = createVector(width, height);
  //createGround();

<<<<<<< HEAD
  // 화면 중앙의 상단에서 타원형 시작
  position = createVector(width / 2, 0);

  // 초기 임의 속도 계산
=======
  //start ellipse at middle top of screen
  position = createVector(width / 2, 0);

  //calculate initial random velocity
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  velocity = p5.Vector.random2D();
  velocity.mult(speed);
}

function draw() {
<<<<<<< HEAD
  // 배경 그리기
=======
  //draw background
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(0, 12);
  noStroke();
  rect(0, 0, width, height);

<<<<<<< HEAD
  // base(밑바닥) 그리기
  fill(200);
  quad(base1.x, base1.y, base2.x, base2.y, base2.x, height, 0, height);

  // base(밑바닥) 상단의 normal(표준) 계산하기
=======
  //draw base
  fill(200);
  quad(base1.x, base1.y, base2.x, base2.y, base2.x, height, 0, height);

  //calculate base top normal
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let baseDelta = p5.Vector.sub(base2, base1);
  baseDelta.normalize();
  let normal = createVector(-baseDelta.y, baseDelta.x);
  let intercept = p5.Vector.dot(base1, normal);

<<<<<<< HEAD
  // ellipse(타원) 그리기
=======
  //draw ellipse
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  noStroke();
  fill(255);
  ellipse(position.x, position.y, r * 2, r * 2);

<<<<<<< HEAD
  // 타원 움직이기
  position.add(velocity);

  // 표준화된 투사 벡터
  incidence = p5.Vector.mult(velocity, -1);
  incidence.normalize();

  // 밑바닥과의 충돌 감지하고 조정하기
  if (p5.Vector.dot(normal, position) > intercept) {
    //투사 벡터와 밑바닥 상단의 dot(점) 계산
    let dot = incidence.dot(normal);

    // 반사 벡터 계산
    // 반사 벡터를 방향 벡터에 지정
=======
  //move ellipse
  position.add(velocity);

  //normalized incidence vector
  incidence = p5.Vector.mult(velocity, -1);
  incidence.normalize();

  // detect and handle collision with base
  if (p5.Vector.dot(normal, position) > intercept) {
    //calculate dot product of incident vector and base top
    let dot = incidence.dot(normal);

    //calculate reflection vector
    //assign reflection vector to direction vector
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    velocity.set(
      2 * normal.x * dot - incidence.x,
      2 * normal.y * dot - incidence.y,
      0
    );
    velocity.mult(speed);

<<<<<<< HEAD
    // 충돌 지점에서 밑바닥 상단 표준 그리기
=======
    // draw base top normal at collision point
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    stroke(255, 128, 0);
    line(
      position.x,
      position.y,
      position.x - normal.x * 100,
      position.y - normal.y * 100
    );
  }
  //}

<<<<<<< HEAD
  // 경계면 충돌 감지
  // 우측
=======
  // detect boundary collision
  // right
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (position.x > width - r) {
    position.x = width - r;
    velocity.x *= -1;
  }
<<<<<<< HEAD
  // 좌측
=======
  // left
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (position.x < r) {
    position.x = r;
    velocity.x *= -1;
  }
<<<<<<< HEAD
  // 상단
=======
  // top
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (position.y < r) {
    position.y = r;
    velocity.y *= -1;

<<<<<<< HEAD
    // 밑바닥의 상단 임의화하기
=======
    //randomize base top
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    base1.y = random(height - 100, height);
    base2.y = random(height - 100, height);
  }
}
