/*
<<<<<<< HEAD
 * @name 객체 배열
 * @description 사용자가 정의한 객체 배열을 만듭니다.
=======
 * @name Array Objects
 * @description Demonstrates the syntax for creating an array of custom objects.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

class Module {
  constructor(xOff, yOff, x, y, speed, unit) {
    this.xOff = xOff;
    this.yOff = yOff;
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.unit = unit;
    this.xDir = 1;
    this.yDir = 1;
  }

<<<<<<< HEAD
  // 사용자 정의한 메소드를 통해 변수들을 업데이트합니다.
=======
  // Custom method for updating the variables
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  update() {
    this.x = this.x + this.speed * this.xDir;
    if (this.x >= this.unit || this.x <= 0) {
      this.xDir *= -1;
      this.x = this.x + 1 * this.xDir;
      this.y = this.y + 1 * this.yDir;
    }
    if (this.y >= this.unit || this.y <= 0) {
      this.yDir *= -1;
      this.y = this.y + 1 * this.yDir;
    }
  }

<<<<<<< HEAD
  // 사용자가 정의한 메소드를 통해 오브젝트를 그립니다.
=======
  // Custom method for drawing the object
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  draw() {
    fill(255);
    ellipse(this.xOff + this.x, this.yOff + this.y, 6, 6);
  }
}

let unit = 40;
let count;
let mods = [];

function setup() {
  createCanvas(720, 360);
  noStroke();
  let wideCount = width / unit;
  let highCount = height / unit;
  count = wideCount * highCount;

  let index = 0;
  for (let y = 0; y < highCount; y++) {
    for (let x = 0; x < wideCount; x++) {
      mods[index++] = new Module(
        x * unit,
        y * unit,
        unit / 2,
        unit / 2,
        random(0.05, 0.8),
        unit
      );
    }
  }
}

function draw() {
  background(0);
  for (let i = 0; i < count; i++) {
    mods[i].update();
    mods[i].draw();
  }
}
