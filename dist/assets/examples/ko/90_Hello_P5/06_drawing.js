/*
* @name 드로잉
* @description 제너레이티브 페인팅 프로그램입니다.
*/

// 모든 경로
let paths = [];
// 지금 페인팅을 하고 있나요?
let painting = false;
// 다음 원까지 걸리는 시간
let next = 0;
// 현재 및 이전 위치
let current;
let previous;

function setup() {
  createCanvas(720, 400);
  current = createVector(0,0);
  previous = createVector(0,0);
};

function draw() {
  background(200);
  
  // 새로운 점을 만들어 봅시다.
  if (millis() > next && painting) {

    // 마우스 위치 받아오기     
    current.x = mouseX;
    current.y = mouseY;

    // 새로운 파티클의 힘은 마우스의 움직임에 기반을 둡니다.
    let force = p5.Vector.sub(current, previous);
    force.mult(0.05);

    // 새로운 파티클 더하기
    paths[paths.length - 1].add(current, force);
    
    // 다음 원의 시간 정하기 
    next = millis() + random(100);

    // 더 많은 마우스값 저장하기
    previous.x = current.x;
    previous.y = current.y;
  }

  // 모든 경로 그리기
  for( let i = 0; i < paths.length; i++) {
    paths[i].update();
    paths[i].display();
  }
}

// 시작하기
function mousePressed() {
  next = 0;
  painting = true;
  previous.x = mouseX;
  previous.y = mouseY;
  paths.push(new Path());
}

// 정지
function mouseReleased() {
  painting = false;
}

// Path(경로)는 파티클들의 목록입니다.
class Path {
  constructor() {
    this.particles = [];
    this.hue = random(100);
  }

  add(position, force) {
    // 새로운 파티클을 그 위치, 힘, 색조값과 함께 추가하기
    this.particles.push(new Particle(position, force, this.hue));
  }
  
  // 파티클 길이 화면에 보이기
  update() {  
    for (let i = 0; i < this.particles.length; i++) {
      this.particles[i].update();
    }
  }  
  
  // 파티클 길이 화면에 보이기
  display() {    
    // 뒤로 반복하기
    for (let i = this.particles.length - 1; i >= 0; i--) {
      // 만약 제거해야 된다면,
      if (this.particles[i].lifespan <= 0) {
        this.particles.splice(i, 1);
      // 그렇지 않다면, 화면에 보이기
      } else {
        this.particles[i].display(this.particles[i+1]);
      }
    }
  
  }  
}

// 경로 위 파티클들
class Particle {
  constructor(position, force, hue) {
    this.position = createVector(position.x, position.y);
    this.velocity = createVector(force.x, force.y);
    this.drag = 0.95;
    this.lifespan = 255;
  }

  update() {
    // Move it
    this.position.add(this.velocity);
    // Slow it down
    this.velocity.mult(this.drag);
    // Fade it out
    this.lifespan--;
  }

  // 파티클을 그리고 선으로 잇기
  // 다른 파티클을 향해 선그리기
  display(other) {
    stroke(0, this.lifespan);
    fill(0, this.lifespan/2);    
    ellipse(this.position.x,this.position.y, 8, 8);    
    // 선을 그려야 한다면,
    if (other) {
      line(this.position.x, this.position.y, other.position.x, other.position.y);
    }
  }
}
