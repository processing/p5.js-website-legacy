/*
 * @name Pelota rebote agitar
 * @description Crea una clase Ball, instancia múltiples objetos, múevelos alrededor de la pantalla, que reboten cuando toquen el borde del lienzo.
 * Detectar el evento agitar basado en el cambio total de aceleración en los ejes x e y (accelerationX, accelerationY) y aumenta o disminuye su velocidad basado en la detección.
 */

let balls = [];

let threshold = 30;
let accChangeX = 0;
let accChangeY = 0;
let accChangeT = 0;

function setup() {
  createCanvas(displayWidth, displayHeight);

  for (let i = 0; i < 20; i++) {
    balls.push(new Ball());
  }
}

function draw() {
  background(0);

  for (let i = 0; i < balls.length; i++) {
    balls[i].move();
    balls[i].display();
  }

  checkForShake();
}

function checkForShake() {
  // Calcular cambio total de aceleración en x e y, (accelerationX, accelerationY)
  accChangeX = abs(accelerationX - pAccelerationX);
  accChangeY = abs(accelerationY - pAccelerationY);
  accChangeT = accChangeX + accChangeY;
  // Si hay agitamiento
  if (accChangeT >= threshold) {
    for (let i = 0; i < balls.length; i++) {
      balls[i].shake();
      balls[i].turn();
    }
  }
  // Si no hay
  else {
    for (let i = 0; i < balls.length; i++) {
      balls[i].stopShake();
      balls[i].turn();
      balls[i].move();
    }
  }
}

// clase Ball
class Ball {
  constructor() {
    this.x = random(width);
    this.y = random(height);
    this.diameter = random(10, 30);
    this.xspeed = random(-2, 2);
    this.yspeed = random(-2, 2);
    this.oxspeed = this.xspeed;
    this.oyspeed = this.yspeed;
    this.direction = 0.7;
  }

  move() {
    this.x += this.xspeed * this.direction;
    this.y += this.yspeed * this.direction;
  }

  // Rebota cuando toca el borde del lienzo
  turn() {
    if (this.x < 0) {
      this.x = 0;
      this.direction = -this.direction;
    } else if (this.y < 0) {
      this.y = 0;
      this.direction = -this.direction;
    } else if (this.x > width - 20) {
      this.x = width - 20;
      this.direction = -this.direction;
    } else if (this.y > height - 20) {
      this.y = height - 20;
      this.direction = -this.direction;
    }
  }

  // Cambia la velocidad en x e y (xspeed, yspeed) según
  // el cambio en el valor de la aceleración en x, accelerationX
  shake() {
    this.xspeed += random(5, accChangeX / 3);
    this.yspeed += random(5, accChangeX / 3);
  }

  // Desacelera gradualmente
  stopShake() {
    if (this.xspeed > this.oxspeed) {
      this.xspeed -= 0.6;
    } else {
      this.xspeed = this.oxspeed;
    }
    if (this.yspeed > this.oyspeed) {
      this.yspeed -= 0.6;
    } else {
      this.yspeed = this.oyspeed;
    }
  }

  display() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}
