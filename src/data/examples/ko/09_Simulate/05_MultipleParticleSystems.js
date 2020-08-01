/*
 * @name 멀티플 파티클 시스템
 * @description 마우스를 클릭한 위치에서 파티클이 폭발적으로 생성되도록 만들어보세요. <br> 매 폭발은 Particle 클래스의 하위 클래스인 Particles와 CrazyParticles
 * 의 한 인스턴스에 해당합니다. <br> 클래스 상속과 다형 사용에 대한 방법을 확인해보세요. <br>
 * 원본 제작: 다니엘 쉬프만(Daniel Shiffman)
 */
let systems;

function setup() {
  createCanvas(710, 400);
  systems = [];
}

function draw() {
  background(51);
  background(0);
  for (i = 0; i < systems.length; i++) {
    systems[i].run();
    systems[i].addParticle();
  }
  if (systems.length == 0) {
    fill(255);
    textAlign(CENTER);
    textSize(32);
    text("click mouse to add particle systems", width / 2, height / 2);
  }
}

function mousePressed() {
  this.p = new ParticleSystem(createVector(mouseX, mouseY));
  systems.push(p);
}

// 간단한 파티클 클래스
let Particle = function(position) {
  this.acceleration = createVector(0, 0.05);
  this.velocity = createVector(random(-1, 1), random(-1, 0));
  this.position = position.copy();
  this.lifespan = 255.0;
};

Particle.prototype.run = function() {
  this.update();
  this.display();
};

// 위치 업데이트를 위한 메소드
Particle.prototype.update = function(){
  this.velocity.add(this.acceleration);
  this.position.add(this.velocity);
  this.lifespan -= 2;
};

// 화면에 보이기 위한 메소드
Particle.prototype.display = function () {
  stroke(200, this.lifespan);
  strokeWeight(2);
  fill(127, this.lifespan);
  ellipse(this.position.x, this.position.y, 12, 12);
};

// 파티클이 여전히 쓸만한가요?
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
Particle.prototype.isDead = function () {
  if (this.lifespan < 0) {
    return true;
  } else {
    return false;
  }
};

let ParticleSystem = function (position) {
  this.origin = position.copy();
  this.particles = [];
};

ParticleSystem.prototype.addParticle = function () {
  // Particle 또는 CrazyParticle을 시스템에 더하기
  if (int(random(0, 2)) == 0) {
    p = new Particle(this.origin);
  }
  else {
    p = new CrazyParticle(this.origin);
  }
  this.particles.push(p);
};

ParticleSystem.prototype.run = function () {
  for (let i = this.particles.length - 1; i >= 0; i--) {
    let p = this.particles[i];
    p.run();
    if (p.isDead()) {
      this.particles.splice(i, 1);
    }
  }
};

// Particle의 하위 클래스

function CrazyParticle(origin) {
  // 부모 생성자(constructor) 만들기
  // 이 때, Function#call을 사용하여 "this"가 올바르게 설정되었는지 확인합니다.
  Particle.call(this, origin);

  // 더해진 속성들 초기화하기
  this.theta = 0.0;
};

// Particle.prototype을 상속하는 Crazy.prototype 오브젝트 만들기
// 주의: 여기서 자주 발생하는 실수는, Crazy.prototype을 만들기 위해 새로운 "particle()"함수를 쓰는 것입니다.
// 이는 여러가지 이유로 적당하지 않은데, 특히 Particle에 "origin" 인수를 제공할 게 없다는 점에서 그렇습니다.
// Particle은 위와 같이 Crazy에서 호출하면 됩니다.
CrazyParticle.prototype = Object.create(Particle.prototype); // 아래의 주석을 보세요.

// "constructor(생성자)" 속성이 CrazyParticle을 참조하게 설정하기
CrazyParticle.prototype.constructor = CrazyParticle;

// 여기서 우리는 run()메소드를 쓰지 않습니다. Particle로부터 상속되었기 때문입니다.

// 이 update() 메소드는 부모 클래스의 update() 메소드를 오버라이드합니다.
CrazyParticle.prototype.update=function() {
  Particle.prototype.update.call(this);
  // 가로 속도에 따라 회전값 증가하기
  this.theta += (this.velocity.x * this.velocity.mag()) / 10.0;
}

// 이 display() 메소드는 부모 클래스의 display() 메소드를 오버라이드합니다.
CrazyParticle.prototype.display=function() {
  // 타원형을 일반적인 파티클처럼 렌더링하기
  Particle.prototype.display.call(this);
  // 그 다음, 회전하는 선들 더하기
  push();
  translate(this.position.x, this.position.y);
  rotate(this.theta);
  stroke(255, this.lifespan);
  line(0, 0, 25, 0);
  pop();
}
