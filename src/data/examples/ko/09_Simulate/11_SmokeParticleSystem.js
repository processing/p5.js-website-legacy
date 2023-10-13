/*
 * @name 연기 파티클
 * @description 다니엘 쉬프만(Dan Shiffman)이 프로세싱(Processing)을 위해 제작한
 * 연기 파티클 시스템(SmokeParticleSystem) 예제를 옮겨왔습니다.
 * 마치 연기와 같은 파티클을 만들어볼까요 :p
 */

// 파티클 텍스쳐
let particle_texture = null;

// 파티클 시스템을 담는 변수
let ps = null;

function preload() {
  particle_texture = loadImage("assets/particle_texture.png");
}

function setup() {

  // 캔버스 사이즈 설정
  createCanvas(640, 360);

  // 파티클 시스템 초기화
  ps = new ParticleSystem(0, createVector(width / 2, height - 60), particle_texture);
}

function draw() {
  background(0);

  let dx = map(mouseX, 0, width, -0.2, 0.2);
  let wind = createVector(dx, 0);

  ps.applyForce(wind);
  ps.run();
  for (let i = 0; i < 2; i++) {
    ps.addParticle();
  }

  // 바람의 힘을 뜻하는 화살표 그리기
  drawVector(wind, createVector(width / 2, 50, 0), 500);
}

/**
 *  이 함수는 "wind(바람)"이 부는 방향을 나타낸 화살표를 그립니다.
 */
function drawVector(v, loc, scale){
  push();
  let arrowsize = 4;
  translate(loc.x, loc.y);
  stroke(255);
  rotate(v.heading());

  let len = v.mag() * scale;
  line(0, 0, len,0);
  line(len, 0, len-arrowsize, +arrowsize / 2);
  line(len, 0, len-arrowsize, -arrowsize / 2);
  pop();
}
//========= 파티클 시스템 ===========

/**
 * 기본적인 파티클 시스템 클래스
 * @param num 파티클 개수를 나타내는 매개 변수
 * @param v 파티클 시스템의 원점을 나타내는 매개 변수
 * @param img_ 시스템 상 각 파티클의 텍스쳐를 나타내는 매개 변수
 * @constructor 생성자
 */
let ParticleSystem = function(num, v, img_) {

  this.particles = [];
  this.origin = v.copy(); // 실수로 원래 벡터값(origin)을 바꾼 경우를 대비하여, 벡터값을 복사합니다.
  this.img = img_
  for(let i = 0; i < num; ++i){
    this.particles.push(new Particle(this.origin, this.img));
  }
};

/**
 * 이 함수는 전체 파티클 시스템을 실행합니다.
 */
ParticleSystem.prototype.run = function() {

  // 변수들에 반복할, 숨겨진 배열 길이
  // for 반복문에 <variable> .length가 표시 될 수 있지만, 매 반복마다 그 길이가
  // 다시 계산되기 때문에 여기에 숨깁니다.
  let len = this.particles.length;

  //파티클 반복 및 실행
  for (let i = len - 1; i >= 0; i--) {
    let particle = this.particles[i];
    particle.run();

    // 파티클이 죽을 경우, 제거(remove)합니다.
    // 자바스크립트의 배열에는 "remove" 기능이 없지만,
    // 대신 동일한 기능을 수행하는 "splice"를 사용할 수 있습니다.
    // 제거를 시작할 지점에 인덱스를 넣고, 해당 지점부터 몇 개를 제거할 지 넣을 수 있습니다.
    if (particle.isDead()) {
      this.particles.splice(i, 1);
    }
  }
}

/**
 * 현재 시스템의 존재하는 모든 파티클에 힘 벡터를 추가하는 메소드
 * @param dir 힘의 방향을 묘사하는 p5.Vector 매개 변수
 */
ParticleSystem.prototype.applyForce = function(dir) {
  let len = this.particles.length;
  for(let i = 0; i < len; ++i){
    this.particles[i].applyForce(dir);
  }
}

/**
 * 본래 지정된 텍스쳐와 동일한 텍스쳐의 파티클을 시스템 원점에 추가
 */
ParticleSystem.prototype.addParticle = function() {
    this.particles.push(new Particle(this.origin, this.img));
}


//========= 파티클 ===========
/**
 * 파티클을 이미지로 렌더링하는 간단한 파티클 클래스
 */
let Particle = function (pos, img_) {
  this.loc = pos.copy();

  let vx = randomGaussian() * 0.3;
  let vy = randomGaussian() * 0.3 - 1.0;

  this.vel = createVector(vx, vy);
  this.acc = createVector();
  this.lifespan = 100.0;
  this.texture = img_;
}

/**
 *  파티클을 업데이트하는 동시에 보이게 하기
 */
Particle.prototype.run = function() {
  this.update();
  this.render();
}

/**
 *  파티클을 화면에 보이게하는 메소드
 */
Particle.prototype.render = function() {
  imageMode(CENTER);
  tint(255, this.lifespan);
  image(this.texture, this.loc.x, this.loc.y);
}

/**
 *  파티클에 힘 벡터를 적용하는 메소드
 */
Particle.prototype.applyForce = function(f) {
  this.acc.add(f);
}

/**
 *  파티클의 lifespan(수명)이 끝나가는지 여부를 확인하는 메소드
 *  만약 끝나간다면 true(참)을, 그렇지 않다면 false(거짓)을 반환
 */
Particle.prototype.isDead = function () {
  if (this.lifespan <= 0.0) {
    return true;
  } else {
      return false;
    }
}

/**
 *  파티클의 위치를 업데이트하는 메소드
 */
Particle.prototype.update = function() {
  this.vel.add(this.acc);
  this.loc.add(this.vel);
  this.lifespan -= 2.5;
  this.acc.mult(0);
}
