/*
 * @name 플로킹
 * @description 크레이그 레이놀즈(Craig Reynolds)의
 * <a href="http://www.red3d.com/cwr/">"군집(Flocking)" 행위</a>를 묘사합니다.<br>
 * (규칙: 응집, 분리, 정렬)<br>
 * (출처: <a href="http://natureofcode.com">natureofcode.com</a>).
 */
let boids = [];

function setup() {
  createCanvas(720, 400);

  // 시스템에 초기 개체(boid) 더하기
  for (let i = 0; i < 100; i++) {
    boids[i] = new Boid(random(width), random(height));
  }
}

function draw() {
  background(51);
  // 모든 개체 실행하기
  for (let i = 0; i < boids.length; i++) {
    boids[i].run(boids);
  }
}

// Boid 클래스
// Separation(분리), Cohesion(응집), Alignment(정렬)을 위한 메소드 추가하기
class Boid {
  constructor(x, y) {
    this.acceleration = createVector(0, 0);
    this.velocity = p5.Vector.random2D();
    this.position = createVector(x, y);
    this.r = 3.0;
    this.maxspeed = 3;    // 최고 속도
    this.maxforce = 0.05; // 최고 조타력
  }

  run(boids) {
    this.flock(boids);
    this.update();
    this.borders();
    this.render();
  }
  
  // Force는 acceleration에 담깁니다.
  applyForce(force) {
    this.acceleration.add(force);
  }
  
  // 세 가지 규칙을 기반으로 새로운 accerlation(가속도)를 축적합니다.
  flock(boids) {
    let sep = this.separate(boids); // 분리
    let ali = this.align(boids);    // 정렬
    let coh = this.cohesion(boids); // 응집
    // 세 힘들을 임의로 가중하기
    sep.mult(2.5);
    ali.mult(1.0);
    coh.mult(1.0);
    // 가속도에 force 벡터 더하기
    this.applyForce(sep);
    this.applyForce(ali);
    this.applyForce(coh);
  }
  
  // 위치 업데이트를 위한 메소드
  update() {
    // 속도 업데이트
    this.velocity.add(this.acceleration);
    // 속도 제한
    this.velocity.limit(this.maxspeed);
    this.position.add(this.velocity);
    // 매 사이클마다 acceleration을 0으로 리셋하기
    this.acceleration.mult(0);
  }
  
  // 목표점을 향한 조타력을 계산하고 적용하는 메소드
  // STEER(조타력) = DESIRED(목표점) - VELOCITY(속도)
  seek(target) {
    let desired = p5.Vector.sub(target, this.position); // A vector pointing from the location to the target
  // desired를 표준화하고 최대 속도로 조정
    desired.normalize();
    desired.mult(this.maxspeed);
    // Steering = Desired minus Velocity
    let steer = p5.Vector.sub(desired, this.velocity);
    steer.limit(this.maxforce); // 최대 조타력으로 제한
    return steer;
  }
  
  // 개체(boid)를 원형으로 그리기
  render() {
    fill(127, 127);
    stroke(200);
    ellipse(this.position.x, this.position.y, 16, 16);
  }
  
  // Wraparound
  borders() {
    if (this.position.x < -this.r) this.position.x = width + this.r;
    if (this.position.y < -this.r) this.position.y = height + this.r;
    if (this.position.x > width + this.r) this.position.x = -this.r;
    if (this.position.y > height + this.r) this.position.y = -this.r;
  }
  
  // 분리 Seperation
  // 인근의 개체를 확인하고 이로부터 거리를 유지하며 조타하게 만드는 메소드
  separate(boids) {
    let desiredseparation = 25.0;
    let steer = createVector(0, 0);
    let count = 0;
    // 매 개체가 시스템에 생성될 때마다, 서로 너무 가까운 위치에 있는지 여부를 확인
    for (let i = 0; i < boids.length; i++) {
      let d = p5.Vector.dist(this.position, boids[i].position);
      // 만약 그 거리가 0보다 크고 임의의 값보다 작다면(0은 개체의 현위치)
      if ((d > 0) && (d < desiredseparation)) {
        // 인근의 개체로부터 떨어진 지점을 향하는 벡터 계산
        let diff = p5.Vector.sub(this.position, boids[i].position);
        diff.normalize();
        diff.div(d); // 거리에 따른 가중
        steer.add(diff);
        count++; // 개체수 카운트
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
  align(boids) {
    let neighbordist = 50;
    let sum = createVector(0, 0);
    let count = 0;
    for (let i = 0; i < boids.length; i++) {
      let d = p5.Vector.dist(this.position, boids[i].position);
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
  cohesion(boids) {
    let neighbordist = 50;
    let sum = createVector(0, 0); // 빈 벡터값으로 시작하여 모든 위치들을 축적
    let count = 0;
    for (let i = 0; i < boids.length; i++) {
      let d = p5.Vector.dist(this.position, boids[i].position);
      if ((d > 0) && (d < neighbordist)) {
        sum.add(boids[i].position); // 위치 추가
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      return this.seek(sum); // 해당 위치를 향해 조타
    } else {
      return createVector(0, 0);
    }
  }  
}

