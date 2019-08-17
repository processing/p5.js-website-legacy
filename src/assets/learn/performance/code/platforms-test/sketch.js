// Particle system performance test
// 
// Chrome Results:
//  "Drawing 200x times took: 1708.16ms."
// 
// Firefox Results:
//  "Drawing 200x times took: 3761.27ms."
//  
// Edge Results:
//  "Drawing 200x times took: 8362.05ms."
// 
// IE11 Results:
//  "Drawing 200x times took: 8665.79ms."
// 
// Editor results:
//  "Drawing 200x times took: 4480.28ms."

p5.disableFriendlyErrors = true;

var iterations = 200;
var numParticles = 1000;
var particles = [];

function setup() {
  createCanvas(800, 600);
  colorMode(HSB, 100);

  for (var i = 0; i < numParticles; i++) {
    particles.push({
      x: random(0, width),
      y: random(0, height),
      heading: random(0, TWO_PI),
      radius: random(5, 10),
      color: color(random(70, 90), 100, 100)
    })
  }

  var start = millis();
  for (var i = 0; i < iterations; i++) {
    draw();
  }
  var elapsed = millis() - start;
  console.log("Drawing " + iterations + "x times took: " + elapsed.toFixed(2) + 
    "ms.");
}

function draw() {
  // Clear with an alpha for trail effect
  background(0, 20);

  for (var i = 0; i < particles.length; i++) {
    var particle = particles[i];

    // Randomly adjust the heading
    particle.heading += random(-PI / 12, PI / 12);

    // Move the particle
    particle.x += 5 * cos(particle.heading);
    particle.y += 5 * sin(particle.heading);

    // Wrap particles around the edges of the screen
    if (particle.x > width) particle.x = particle.x - width;
    else if (particle.x < 0) particle.x = width + particle.x;
    if (particle.y > height) particle.y = particle.y - height;
    else if (particle.y < 0) particle.y = height + particle.y;

    // Draw particle
    fill(particle.color);
    ellipse(particle.x, particle.y, particle.radius, particle.radius);
  }
}