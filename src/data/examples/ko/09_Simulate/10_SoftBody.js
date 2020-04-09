/*
<<<<<<< HEAD
 * @name 소프트 바디
 * @description 이라 그린버그(Ira Greenberg) 원본 제작.
 * <br><br>curveVertex() 와 curveTightness()를 사용한 소프트 바디 역학 시뮬레이션.
 */
// 중심점
=======
 * @name Soft Body
 * @description Original example by Ira Greenberg.
 * <br><br>Softbody dynamics simulation using curveVertex() and curveTightness().
 */
// center point
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let centerX = 0.0, centerY = 0.0;

let radius = 45, rotAngle = -90;
let accelX = 0.0, accelY = 0.0;
let deltaX = 0.0, deltaY = 0.0;
let springing = 0.0009, damping = 0.98;

<<<<<<< HEAD
// 코너 노드들
let nodes = 5;

// 빈 배열
=======
//corner nodes
let nodes = 5;

//zero fill arrays
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let nodeStartX = [];
let nodeStartY = [];
let nodeX = [];
let nodeY = [];
let angle = [];
let frequency = [];

<<<<<<< HEAD
// 소프트 바디 역학
=======
// soft-body dynamics
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let organicConstant = 1.0;

function setup() {
  createCanvas(710, 400);

<<<<<<< HEAD
  // 화면상의 중심 도형
  centerX = width / 2;
  centerY = height / 2;

  // 배열을 0으로 초기화
=======
  //center shape in window
  centerX = width / 2;
  centerY = height / 2;

  //initialize arrays to 0
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let i = 0; i < nodes; i++){
    nodeStartX[i] = 0;
    nodeStartY[i] = 0;
    nodeY[i] = 0;
    nodeY[i] = 0;
    angle[i] = 0;
  }

<<<<<<< HEAD
  // 코너 노드의 빈도수 초기화
=======
  // iniitalize frequencies for corner nodes
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let i = 0; i < nodes; i++){
    frequency[i] = random(5, 12);
  }

  noStroke();
  frameRate(30);
}

function draw() {
<<<<<<< HEAD
  // 배경 사라지게하기
=======
  //fade background
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(0, 100);
  rect(0, 0, width, height);
  drawShape();
  moveShape();
}

function drawShape() {
<<<<<<< HEAD
  // 노드 시작 위치 계산
=======
  //  calculate node  starting locations
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let i = 0; i < nodes; i++){
    nodeStartX[i] = centerX + cos(radians(rotAngle)) * radius;
    nodeStartY[i] = centerY + sin(radians(rotAngle)) * radius;
    rotAngle += 360.0 / nodes;
  }

<<<<<<< HEAD
  // 다각형 그리기
=======
  // draw polygon
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  curveTightness(organicConstant);
  fill(255);
  beginShape();
  for (let i = 0; i < nodes; i++){
    curveVertex(nodeX[i], nodeY[i]);
  }
  for (let i = 0; i < nodes-1; i++){
    curveVertex(nodeX[i], nodeY[i]);
  }
  endShape(CLOSE);
}

function moveShape() {
<<<<<<< HEAD
  // 중심점 옮기기
  deltaX = mouseX - centerX;
  deltaY = mouseY - centerY;

  // 스프링같은 효과 만들기
=======
  //move center point
  deltaX = mouseX - centerX;
  deltaY = mouseY - centerY;

  // create springing effect
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  deltaX *= springing;
  deltaY *= springing;
  accelX += deltaX;
  accelY += deltaY;

<<<<<<< HEAD
  // 프레데터(predator)의 중심 옮기기
  centerX += accelX;
  centerY += accelY;

  // 스프링같은 효과 감쇠하기
  accelX *= damping;
  accelY *= damping;

  // 커브의 탄성 바꾸기
  organicConstant = 1 - ((abs(accelX) + abs(accelY)) * 0.1);

  // 노드 옮기기
=======
  // move predator's center
  centerX += accelX;
  centerY += accelY;

  // slow down springing
  accelX *= damping;
  accelY *= damping;

  // change curve tightness
  organicConstant = 1 - ((abs(accelX) + abs(accelY)) * 0.1);

  //move nodes
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let i = 0; i < nodes; i++){
    nodeX[i] = nodeStartX[i] + sin(radians(angle[i])) * (accelX * 2);
    nodeY[i] = nodeStartY[i] + sin(radians(angle[i])) * (accelY * 2);
    angle[i] += frequency[i];
  }
}
