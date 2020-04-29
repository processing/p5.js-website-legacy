/*
 * @name 物件 (Objects)
 * @description 创建一个 Jitter 类, 实例化一个物件，并且在屏幕上移动。
 * 改编自 Processing 入门，作者：Casey Reas 和 Ben Fry
 */

let bug; // 声明物件

function setup() {
  createCanvas(710, 400);
  // 创造物件
  bug = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug.move();
  bug.display();
}

// Jitter 类
class Jitter {
  constructor() {
    this.x = random(width);
    this.y = random(height);
    this.diameter = random(10, 30);
    this.speed = 1;
  }

  move() {
    this.x += random(-this.speed, this.speed);
    this.y += random(-this.speed, this.speed);
  }

  display() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}
