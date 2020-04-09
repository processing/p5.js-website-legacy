/*
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

  // 화면 중앙의 상단에서 타원형 시작
  position = createVector(width / 2, 0);

  // 초기 임의 속도 계산
  velocity = p5.Vector.random2D();
  velocity.mult(speed);
}

function draw() {
  // 배경 그리기
  fill(0, 12);
  noStroke();
  rect(0, 0, width, height);

  // base(밑바닥) 그리기
  fill(200);
  quad(base1.x, base1.y, base2.x, base2.y, base2.x, height, 0, height);

  // base(밑바닥) 상단의 normal(표준) 계산하기
  let baseDelta = p5.Vector.sub(base2, base1);
  baseDelta.normalize();
  let normal = createVector(-baseDelta.y, baseDelta.x);
  let intercept = p5.Vector.dot(base1, normal);

  // ellipse(타원) 그리기
  noStroke();
  fill(255);
  ellipse(position.x, position.y, r * 2, r * 2);

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
    velocity.set(
      2 * normal.x * dot - incidence.x,
      2 * normal.y * dot - incidence.y,
      0
    );
    velocity.mult(speed);

    // 충돌 지점에서 밑바닥 상단 표준 그리기
    stroke(255, 128, 0);
    line(
      position.x,
      position.y,
      position.x - normal.x * 100,
      position.y - normal.y * 100
    );
  }
  //}

  // 경계면 충돌 감지
  // 우측
  if (position.x > width - r) {
    position.x = width - r;
    velocity.x *= -1;
  }
  // 좌측
  if (position.x < r) {
    position.x = r;
    velocity.x *= -1;
  }
  // 상단
  if (position.y < r) {
    position.y = r;
    velocity.y *= -1;

    // 밑바닥의 상단 임의화하기
    base1.y = random(height - 100, height);
    base2.y = random(height - 100, height);
  }
}
