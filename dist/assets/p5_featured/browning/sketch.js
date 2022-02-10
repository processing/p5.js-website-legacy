var bubbles = [];

function setup() { 
  createCanvas(windowWidth, windowHeight);
  for (var i = 0; i < 1; i++) { 
    bubbles[i] = new Bubble(random(width), random(height)); 
  } 

  stroke(141, 115, 243);
}

function mousePressed() {
  bubbles.push(new Bubble(mouseX, mouseY)); 
}

function keyPressed() {
  bubbles.splice(0,1);    
}

function draw() {
  background(255);
  for (var i = 0;i < bubbles.length; i++) {
    bubbles[i].update();
    bubbles[i].display();
    bubbles[i].show();
      
  
    for (var j = 0; j < bubbles.length; j++) {
      if (i != j && bubbles[i].intersects(bubbles[j])) {
        bubbles[i].changeColor();
        bubbles[j].changeColor();
      } 
    }
  }
}   
