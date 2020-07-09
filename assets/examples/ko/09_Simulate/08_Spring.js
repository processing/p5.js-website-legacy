/*
 * @name 용수철
 * @frame 710, 400
 * @description 수평 막대를 클릭하고 드래그한 뒤 놓으면 용수철 효과를 볼 수 있습니다.
 */
// 상단의 막대기를 위한 용수철(spring) 그리기
let springHeight = 32,
    left,
    right,
    maxHeight = 200,
    minHeight = 100,
    over = false,
    move = false;

// 용수철 시뮬레이션 상수들
let M = 0.8,  // Mass(질량)
    K = 0.2,  // 용수철(spring) 상수
    D = 0.92, // Damping(감쇠)
    R = 150;  // Rest Position(놓인 위치)

// 용수철 시뮬레이션 변수들
let ps = R,   // 위치
    vs = 0.0, // 속도
    as = 0,   // 가속도
    f = 0;    // 힘

function setup() {
  createCanvas(710, 400);
  rectMode(CORNERS);
  noStroke();
  left = width / 2 - 100;
  right = width / 2 + 100;
}

function draw() {
  background(102);
  updateSpring();
  drawSpring();
}

function drawSpring() {
  // 바탕 그리기
  fill(0.2);
  let baseWidth = 0.5 * ps + -8;
  rect(width / 2 - baseWidth, ps + springHeight, width / 2 + baseWidth, height);

  // 상단 막대기의 색상 설정하고 그리기
  if (over || move) {
    fill(255);
  } else {
    fill(204);
  }

  rect(left, ps, right, ps + springHeight);
}

function updateSpring() {
  // 용수철(spring) 위치 업데이트
  if ( !move ) {
    f = -K * ( ps - R ); // f=-ky
    as = f / M;          // 가속도 설정, f=ma == a=f/m
    vs = D * (vs + as);  // 속도 설정
    ps = ps + vs;        // 업데이트된 위치
  }

  if (abs(vs) < 0.1) {
    vs = 0.0;
  }

  // 마우스가 상단 막대기 위에 있는지 여부 테스트
  if (mouseX > left && mouseX < right && mouseY > ps && mouseY < ps + springHeight) {
    over = true;
  } else {
    over = false;
  }

  // 상단 막대기의 위치 설정 및 제한
  if (move) {
    ps = mouseY - springHeight / 2;
    ps = constrain(ps, minHeight, maxHeight);
  }
}

function mousePressed() {
  if (over) {
    move = true;
  }
}

function mouseReleased() {
  move = false;
}
