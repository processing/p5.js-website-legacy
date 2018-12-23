/*
 * @name PolarToCartesian
 * @description Convert a polar coordinate (r,theta)
 * to cartesian (x,y): x = rcos(theta) y = rsin(theta)
 * Original by Daniel Shiffman.
 */
let r;

// Angle and angular velocity, accleration
let theta;
let theta_vel;
let theta_acc;

function setup() {
  createCanvas(710, 400);

  // Initialize all values
  r = height * 0.45;
  theta = 0;
  theta_vel = 0;
  theta_acc = 0.0001;
}

function draw() {
  background(0);

  // Translate the origin point to the center of the screen
  translate(width / 2, height / 2);

  // Convert polar to cartesian
  let x = r * cos(theta);
  let y = r * sin(theta);

  // Draw the ellipse at the cartesian coordinate
  ellipseMode(CENTER);
  noStroke();
  fill(200);
  ellipse(x, y, 32, 32);

  // Apply acceleration and velocity to angle
  // (r remains static in this example)
  theta_vel += theta_acc;
  theta += theta_vel;
}
