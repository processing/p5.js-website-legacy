var malala;
var book = [];
var pen = [];
var child = [];
var teacher = [];

var scene = 1;
var font;

function preload() {
  font = loadFont("Inconsolata.otf");
  malala = loadImage("malala.png");
quote = "Let us remember:   One book, one pen, one child, and one teacher can change the world - Malala Yousafzai";

  
  book[0] = loadImage("book1.png");
  book[1] = loadImage("book2.png");
  book[2] = loadImage("book3.png");
  book[3] = loadImage("book4.png");
  book[4] = loadImage("book5.png");

  pen[0] = loadImage("pen.png");
  pen[1] = loadImage("pen1.png");
  pen[2] = loadImage("pen2.png");
  pen[3] = loadImage("pen3.png");
  pen[4] = loadImage("pen4.png");
  pen[5] = loadImage("pen5.png");
  
  
  child[0] = loadImage("handone.png");
  child[1] = loadImage("handtwo.png");

  teacher[0] = loadImage("mouth1.png");
  teacher[1] = loadImage("mouth2.png");
  teacher[2] = loadImage("mouth3.png");


}

function setup() {
  createCanvas(windowWidth, windowHeight);
  imageMode(CENTER);
  noCursor();
}

function draw() {
  clear();
  noStroke();  
    
  if (scene == 1) {
    textSize(25);
    textFont(font);
    fill('#68c7b7');
    text("Click the screen to change image.", windowWidth*0.5, 100);
  }
  
  // Opening book
  if (scene == 2) {
    frame = int(map(mouseX, 0, width, 0, book.length));
    frame = int(constrain(frame, 0, book.length));
    for (var c = 0; c < windowWidth - 50; c += 100) {
      for (var d = 0; d < windowHeight; d += 100)
        image(book[frame], c + 15, d + 50, 50, 50);
    }
  }

  // Flowing pen
  if (scene == 3) {
    frame = int(map(mouseX, 0, width, 0, pen.length));
    frame = int(constrain(frame, 0, pen.length));
    for (var x = 0; x < windowWidth - 50; x += 100) {
      for (var y = 0; y < windowHeight; y += 100)
        image(pen[frame], x + 15, y + 50, 50, 50);
    }
  }

  // Child's hand
  if (scene == 4) {
    frame = int(map(mouseX, 0, width, 0, child.length));
    frame = int(constrain(frame, 0, child.length));
    for (var a = 0; a < windowWidth - 50; a += 100) {
      for (var b = 0; b < windowHeight; b += 100)
        image(child[frame], a + 15, b + 50, 50, 50);
    }
  }

  // Teacher's voice
  if (scene == 5) {
    frame = int(map(mouseX, 0, width, 0, teacher.length));
    frame = int(constrain(frame, 0, teacher.length));
    for (var i = 0; i < windowWidth - 50; i += 100) {
      for (var j = 0; j < windowHeight; j += 100)
        image(teacher[frame], i + 15, j + 50, 50, 50);
    }
  }
    image(malala, 175, windowHeight * 0.70, 1000, 1000);
    fill(246,144,101);
    textSize(20);
    text(quote, windowWidth-200, windowHeight/2-50, 150, 500);
    fill(255,255,153,50);
  ellipse(mouseX,mouseY,80,80);
	fill(255,255,153,150);
  ellipse(mouseX,mouseY,50,50);
  ellipse(mouseX,mouseY,15,15);
  fill("#ffff32");
  ellipse(mouseX,mouseY,10,10);
}

function mousePressed() {
  if (scene == 1) {
    scene = 2;
  } else if (scene == 2) {
    scene = 3;
  } else if (scene == 3) {
    scene = 4;
  } else if (scene == 4) {
    scene = 5;
  }	else if (scene == 5) {
    scene = 2;
  }
}