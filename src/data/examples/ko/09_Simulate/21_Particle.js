/*
 * @name 파티클
 * @description particle.js는 가벼운 자바스크립트 라이브러리로,
 * 매우 아름다운 파티클 시스템을 만듭니다.
 * 이 예제는 p5.js를 사용하여 particle.js의 파티클 시스템을 재현합니다.
 * 사가 아로라(Sagar Arora)가 기여하고, Particle.js로부터 영감을 얻었습니다.
 */


// 이 클래스는 각 파티클의 속성들을 표현합니다.
class Particle {
// 파티클의 좌표값, 반경, 그리고 속도를
// 두 좌표축에 의거하여 설정합니다.
  constructor(){
    this.x = random(0,width);
    this.y = random(0,height);
    this.r = random(1,8);
    this.xSpeed = random(-2,2);
    this.ySpeed = random(-1,1.5);
  }

// 파티클 생성하기
  createParticle() {
    noStroke();
    fill('rgba(200,169,169,0.5)');
    circle(this.x,this.y,this.r);
  }

// 파티클이 움직이도록 설정하기
  moveParticle() {
    if(this.x < 0 || this.x > width)
      this.xSpeed*=-1;
    if(this.y < 0 || this.y > height)
      this.ySpeed*=-1;
    this.x+=this.xSpeed;
    this.y+=this.ySpeed;
  }

// 이 함수는 특정 거리 안쪽에 위치한 파티클들 사이에 연결선을 만듭니다.
  joinParticles(paraticles) {
    particles.forEach(element =>{
      let dis = dist(this.x,this.y,element.x,element.y);
      if(dis<85) {
        stroke('rgba(255,255,255,0.04)');
        line(this.x,this.y,element.x,element.y);
      }
    });
  }
}

// 복수의 파티클들을 추가하기 위한 배열
let particles = [];

function setup() {
  createCanvas(720, 400);
  for(let i = 0;i<width/10;i++){
    particles.push(new Particle());
  }
}

function draw() {
  background('#0f0f0f');
  for(let i = 0;i<particles.length;i++) {
    particles[i].createParticle();
    particles[i].moveParticle();
    particles[i].joinParticles(particles.slice(i));
  }
}