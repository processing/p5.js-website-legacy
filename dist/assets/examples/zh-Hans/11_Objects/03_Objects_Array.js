/*
 * @name 物件数组
 * @description 创建一个 Jitter 类，实例化多个物件，并且在屏幕上移动。
 */

let bugs = []; // Jitter 物件的数组

function setup() {
  createCanvas(710, 400);
  // 创造物件
  for (let i = 0; i < 50; i++) {
    bugs.push(new Jitter());
  }
}

function draw() {
  background(50, 89, 100);
  for (let i = 0; i < bugs.length; i++) {
    bugs[i].move();
    bugs[i].display();
  }
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
