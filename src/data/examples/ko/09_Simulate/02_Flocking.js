/*
 * @name 플로킹
 * @description 크레이그 레이놀즈(Craig Reynolds)의 "군집(Flocking)" 행위를 묘사합니다.
 * 참고: http://www.red3d.com/cwr/
 * 규칙: 응집, 분리, 정렬
 * (출처: <a href="http://natureofcode.com">natureofcode.com</a>).
 * 마우스를 드래그하여 시스템에 개체(boid)를 더해보세요.
 */


let flock;

function setup() {
  createCanvas(640, 360);
  createP("Drag the mouse to generate new boids.");

  flock = new Flock();
  // 시스템에 초기 개체(boid) 더하기
  for (let i = 0; i < 100; i++) {
    let b = new Boid(width / 2,height / 2);
    flock.addBoid(b);
  }
}

function draw() {
  background(51);
  flock.run();
}

// 시스템에 새로운 개체 더하기
function mouseDragged() {
  flock.addBoid(new Boid(mouseX, mouseY));
}

// The Nature of Code
// 다니엘 쉬프만(Daniel Shiffman)
// http://natureofcode.com

// Flock 객체는
// 모든 개체(boid)의 배열을 관리하는, 간단한 작업을 수행합니다.

function Flock() {
  // 모든 개체의 배열
  this.boids = []; // 배열 초기화
}

Flock.prototype.run = function() {
  for (let i = 0; i < this.boids.length; i++) {
    this.boids[i].run(this.boids);  // 전체 보이즈 개체 목록을 각 개체에 보내기
  }
}

Flock.prototype.addBoid = function(b) {
  this.boids.push(b);
}

// The Nature of Code
// 다니엘 쉬프만(Daniel Shiffman)
// http://natureofcode.com

// Boid(개체) 클래스
// 응집(cohesion), 분리(seperation), 정렬(alignment)을 위한 메소드 추가

function Boid(x, y) {
  this.acceleration = createVector(0, 0);
  this.velocity = createVector(random(-1, 1), random(-1, 1));
  this.position = createVector(x, y);
  this.r = 3.0;
  this.maxspeed = 3;    // 최대 속도
  this.maxforce = 0.05; // 최대 조타력
}

Boid.prototype.run = function(boids) {
  this.flock(boids);
  this.update();
  this.borders();
  this.render();
}

Boid.prototype.applyForce = function(force) {
  // A = F / M 으로 계산하고 싶다면, 여기에 질량을 더하면 됩니다. 
  this.acceleration.add(force);
}

// 3가지 규칙에 따라 매번 새로운 가속도를 만듭니다.
Boid.prototype.flock = function(boids) {
  let sep = this.separate(boids);   // 분리
  let ali = this.align(boids);      // 정렬
  let coh = this.cohesion(boids);   // 응집
  // 세 힘들을 임의로 가중하기
  sep.mult(1.5);
  ali.mult(1.0);
  coh.mult(1.0);
  // 가속도에 force 벡터 더하기
  this.applyForce(sep);
  this.applyForce(ali);
  this.applyForce(coh);
}

// 위치 업데이트를 위한 메소드
Boid.prototype.update = function() {
  // 속도 업데이트
  this.velocity.add(this.acceleration);
  // 속도 제한
  this.velocity.limit(this.maxspeed);
  this.position.add(this.velocity);
  // 매 사이클마다 가속도를 0으로 리셋
  this.acceleration.mult(0);
}

// 특정 목표점을 향한 조타력을 계산하고 적용하는 메소드
// STEER(조타력) = DESIRED(목표점) - VELOCITY(속도)
Boid.prototype.seek = function(target) {
  let desired = p5.Vector.sub(target,this.position);  // 현위치에서 목표점을 가리키는 벡터
  // desired를 표준화하고 최대 속도로 조정
  desired.normalize();
  desired.mult(this.maxspeed);
  // Steering = Desired minus Velocity
  let steer = p5.Vector.sub(desired,this.velocity);
  steer.limit(this.maxforce);  // 최대 조타력으로 제한
  return steer;
}

Boid.prototype.render = function() {
  // 속도의 방향에 따라 회전하는 삼각형 그리기
  let theta = this.velocity.heading() + radians(90);
  fill(127);
  stroke(200);
  push();
  translate(this.position.x, this.position.y);
  rotate(theta);
  beginShape();
  vertex(0, -this.r * 2);
  vertex(-this.r, this.r * 2);
  vertex(this.r, this.r * 2);
  endShape(CLOSE);
  pop();
}

// Wraparound
Boid.prototype.borders = function() {
  if (this.position.x < -this.r)  this.position.x = width + this.r;
  if (this.position.y < -this.r)  this.position.y = height + this.r;
  if (this.position.x > width + this.r) this.position.x = -this.r;
  if (this.position.y > height + this.r) this.position.y = -this.r;
}

// 분리 Seperation
// 인근의 개체를 확인하고 이로부터 거리를 유지하며 조타하게 만드는 메소드
Boid.prototype.separate = function(boids) {
  let desiredseparation = 25.0;
  let steer = createVector(0, 0);
  let count = 0;
  // 매 개체가 시스템에 생성될 때마다, 서로 너무 가까운 위치에 있는지 여부를 확인
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    // 만약 그 거리가 0보다 크고 임의의 값보다 작다면(0은 개체의 현위치)
    if ((d > 0) && (d < desiredseparation)) {
      // 인근의 개체로부터 떨어진 지점을 향하는 벡터 계산
      let diff = p5.Vector.sub(this.position, boids[i].position);
      diff.normalize();
      diff.div(d);        // 거리에 따른 가중
      steer.add(diff);
      count++;            // 개체수 카운트
    }
  }
  // 평균 -- 얼마로 나눌 것인가
  if (count > 0) {
    steer.div(count);
  }

  // 벡터가 0보다 크다면,
  if (steer.mag() > 0) {
    // 레이놀즈의 공식 Steering = Desired - Velocity을 적용한다.
    steer.normalize();
    steer.mult(this.maxspeed);
    steer.sub(this.velocity);
    steer.limit(this.maxforce);
  }
  return steer;
}

// 배열 Alignment
// 서로 인근에 있는 모든 개체에 대한 평균 속도 계산
Boid.prototype.align = function(boids) {
  let neighbordist = 50;
  let sum = createVector(0,0);
  let count = 0;
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    if ((d > 0) && (d < neighbordist)) {
      sum.add(boids[i].velocity);
      count++;
    }
  }
  if (count > 0) {
    sum.div(count);
    sum.normalize();
    sum.mult(this.maxspeed);
    let steer = p5.Vector.sub(sum, this.velocity);
    steer.limit(this.maxforce);
    return steer;
  } else {
    return createVector(0, 0);
  }
}

// 응집 Cohesion
// 서로 인근에 있는 모든 개체의 평균 위치값(예: 중앙)에 대해, 이 지점을 향한 조타 벡터값 계산
Boid.prototype.cohesion = function(boids) {
  let neighbordist = 50;
  let sum = createVector(0, 0);   // 빈 벡터값으로 시작하여 모든 위치들을 축적
  let count = 0;
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    if ((d > 0) && (d < neighbordist)) {
      sum.add(boids[i].position); // 위치 추가
      count++;
    }
  }
  if (count > 0) {
    sum.div(count);
    return this.seek(sum);  // 해당 위치를 향해 조타
  } else {
    return createVector(0, 0);
  }
}


