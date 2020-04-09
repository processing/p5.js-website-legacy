/*
<<<<<<< HEAD
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
=======
* @name Drawing
* @description Generative painting program.
*/

// All the paths
let paths = [];
// Are we painting?
let painting = false;
// How long until the next circle
let next = 0;
// Where are we now and where were we?
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let current;
let previous;

function setup() {
  createCanvas(720, 400);
  current = createVector(0,0);
  previous = createVector(0,0);
};

function draw() {
  background(200);
  
<<<<<<< HEAD
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
=======
  // If it's time for a new point
  if (millis() > next && painting) {

    // Grab mouse position      
    current.x = mouseX;
    current.y = mouseY;

    // New particle's force is based on mouse movement
    let force = p5.Vector.sub(current, previous);
    force.mult(0.05);

    // Add new particle
    paths[paths.length - 1].add(current, force);
    
    // Schedule next circle
    next = millis() + random(100);

    // Store mouse values
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    previous.x = current.x;
    previous.y = current.y;
  }

<<<<<<< HEAD
  // 모든 경로 그리기
=======
  // Draw all paths
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for( let i = 0; i < paths.length; i++) {
    paths[i].update();
    paths[i].display();
  }
}

<<<<<<< HEAD
// 시작하기
=======
// Start it up
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function mousePressed() {
  next = 0;
  painting = true;
  previous.x = mouseX;
  previous.y = mouseY;
  paths.push(new Path());
}

<<<<<<< HEAD
// 정지
=======
// Stop
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function mouseReleased() {
  painting = false;
}

<<<<<<< HEAD
// Path(경로)는 파티클들의 목록입니다.
=======
// A Path is a list of particles
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
class Path {
  constructor() {
    this.particles = [];
    this.hue = random(100);
  }

  add(position, force) {
<<<<<<< HEAD
    // 새로운 파티클을 그 위치, 힘, 색조값과 함께 추가하기
    this.particles.push(new Particle(position, force, this.hue));
  }
  
  // 파티클 길이 화면에 보이기
=======
    // Add a new particle with a position, force, and hue
    this.particles.push(new Particle(position, force, this.hue));
  }
  
  // Display plath
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  update() {  
    for (let i = 0; i < this.particles.length; i++) {
      this.particles[i].update();
    }
  }  
  
<<<<<<< HEAD
  // 파티클 길이 화면에 보이기
  display() {    
    // 뒤로 반복하기
    for (let i = this.particles.length - 1; i >= 0; i--) {
      // 만약 제거해야 된다면,
      if (this.particles[i].lifespan <= 0) {
        this.particles.splice(i, 1);
      // 그렇지 않다면, 화면에 보이기
=======
  // Display plath
  display() {    
    // Loop through backwards
    for (let i = this.particles.length - 1; i >= 0; i--) {
      // If we shold remove it
      if (this.particles[i].lifespan <= 0) {
        this.particles.splice(i, 1);
      // Otherwise, display it
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
      } else {
        this.particles[i].display(this.particles[i+1]);
      }
    }
  
  }  
}

<<<<<<< HEAD
// 경로 위 파티클들
=======
// Particles along the path
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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

<<<<<<< HEAD
  // 파티클을 그리고 선으로 잇기
  // 다른 파티클을 향해 선그리기
=======
  // Draw particle and connect it with a line
  // Draw a line to another
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  display(other) {
    stroke(0, this.lifespan);
    fill(0, this.lifespan/2);    
    ellipse(this.position.x,this.position.y, 8, 8);    
<<<<<<< HEAD
    // 선을 그려야 한다면,
=======
    // If we need to draw a line
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    if (other) {
      line(this.position.x, this.position.y, other.position.x, other.position.y);
    }
  }
}
