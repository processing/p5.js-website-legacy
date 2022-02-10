var img;
var finger1 = 0;
var finger2 = 0;
var finger3 = 0;
var finger4 = 0;
var finger5 = 0;
var finger6 = 0;
var finger7 = 0;

// MOZZIE #1 : RGB declaration
var r, g, b;
// MOZZIE #2 : RGB declaration
var r2, g2, b2;
// MOZZIE #3 : RGB declaration
var r3, g3, b3;
// MOZZIE #4 : RGB declaration
var r4, g4, b4;
// MOZZIE #5 : RGB declaration
var r5, g5, b5;
// MOZZIE #6 : RGB declaration
var r6, g6, b6;
// MOZZIE #7 : RGB declaration
var r7, g7, b7;
// MOZZIE #8 : RGB declaration
var r8, g8, b8;
// MOZZIE #9 : RGB declaration
var r9, g9, b9;

// Declared MOZZIE #1
var mozzie;
// Declared MOZZIE #2
var mozzie2;
// Declared MOZZIE #3
var mozzie3;
// Declared MOZZIE #4
var mozzie4;
// Declared MOZZIE #5
var mozzie5;
// Declared MOZZIE #6
var mozzie6;
// Declared MOZZIE #7
var mozzie7;
// Declared MOZZIE #8
var mozzie8;
// Declared MOZZIE #9
var mozzie9;

function preload() {
  //can only see 'loadImage' in Firefox 
  img = loadImage("finger01.png");
}

function setup() {
  createCanvas(windowWidth, windowHeight);
  imageMode(CORNER);
  // MOZZIE #1 :red, green, and blue color values
  r = 255;
  g = 255;
  b = 255;
  // MOZZIE #2 :red, green, and blue color values
  r2 = 255;
  g2 = 255;
  b2 = 255;
  // MOZZIE #3 :red, green, and blue color values
  r3 = 255;
  g3 = 255;
  b3 = 255;
  // MOZZIE #4 :red, green, and blue color values
  r4 = 255;
  g4 = 255;
  b4 = 255;
  // MOZZIE #5 :red, green, and blue color values
  r5 = 255;
  g5 = 255;
  b5 = 255;
  // MOZZIE #6 :red, green, and blue color values
  r6 = 255;
  g6 = 255;
  b6 = 255;
  // MOZZIE #7 :red, green, and blue color values
  r7 = 255;
  g7 = 255;
  b7 = 255;
  // MOZZIE #8 :red, green, and blue color values
  r8 = 255;
  g8 = 255;
  b8 = 255;
  // MOZZIE #9 :red, green, and blue color values
  r9 = 255;
  g9 = 255;
  b9 = 255;

  // MOZZIE #1 
  mozzie = {
    x: (windowWidth/1200)*80,
    y: (windowHeight/640)*300,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r, g - 20, b - 20);
      fill(r, g - 20, b - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d = dist(mouseX, mouseY, this.x, this.y);
      if (d < 28) {
        r = 255;
        g = g - 20;
        b = b - 20;
      }
    }
  }

  // MOZZIE #2 - with the new set of variables 
  mozzie2 = {
    x: (windowWidth/1200)*100,
    y: (windowHeight/640)*600,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r2, g2 - 20, b2 - 20);
      fill(r2, g2 - 20, b2 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d2 = dist(mouseX, mouseY, this.x, this.y);
      if (d2 < 28) {
        r2 = 255;
        g2 = g2 - 20;
        b2 = b2 - 20;
      }
    }
  }

  // MOZZIE #3 - with the new set of variables 
  mozzie3 = {
    x: (windowWidth/1200)*360,
    y: (windowHeight/640)*50,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r3, g3 - 20, b3 - 20);
      fill(r3, g3 - 20, b3 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d3 = dist(mouseX, mouseY, this.x, this.y);
      if (d3 < 28) {
        r3 = 255;
        g3 = g3 - 20;
        b3 = b3 - 20;
      }
    }
  }

  // MOZZIE #4 - with the new set of variables 
  mozzie4 = {
    x: (windowWidth/1200)*800,
    y: (windowHeight/640)*400,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r4, g4 - 20, b4 - 20);
      fill(r4, g4 - 20, b4 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d4 = dist(mouseX, mouseY, this.x, this.y);
      if (d4 < 28) {
        r4 = 255;
        g4 = g4 - 20;
        b4 = b4 - 20;
      }
    }
  }

  // MOZZIE #5 - with the new set of variables 
  mozzie5 = {
    x: (windowWidth/1200)*400,
    y: (windowHeight/640)*350,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r5, g5 - 20, b5 - 20);
      fill(r5, g5 - 20, b5 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d5 = dist(mouseX, mouseY, this.x, this.y);
      if (d5 < 28) {
        r5 = 255;
        g5 = g5 - 20;
        b5 = b5 - 20;
      }
    }
  }

  // MOZZIE #6 - with the new set of variables 
  mozzie6 = {
    x: (windowWidth/1200)*1150,
    y: (windowHeight/640)*300,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r6, g6 - 20, b6 - 20);
      fill(r6, g6 - 20, b6 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d6 = dist(mouseX, mouseY, this.x, this.y);
      if (d6 < 28) {
        r6 = 255;
        g6 = g6 - 20;
        b6 = b6 - 20;
      }
    }
  }

  // MOZZIE #7 - with the new set of variables 
  mozzie7 = {
    x: (windowWidth/1200)*900,
    y: (windowHeight/640)*350,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r7, g7 - 20, b7 - 20);
      fill(r7, g7 - 20, b7 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d7 = dist(mouseX, mouseY, this.x, this.y);
      if (d7 < 28) {
        r7 = 255;
        g7 = g7 - 20;
        b7 = b7 - 20;
      }
    }
  }

  // MOZZIE #8 - with the new set of variables 
  mozzie8 = {
    x: (windowWidth/1200)*890,
    y: (windowHeight/640)*610,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r8, g8 - 20, b8 - 20);
      fill(r8, g8 - 20, b8 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d8 = dist(mouseX, mouseY, this.x, this.y);
      if (d8 < 28) {
        r8 = 255;
        g8 = g8 - 20;
        b8 = b8 - 20;
      }
    }
  }

  // MOZZIE #9 - with the new set of variables 
  mozzie9 = {
    x: (windowWidth/1200)*880,
    y: (windowHeight/640)*100,
    show: function() {
      noStroke();
      strokeWeight(2);
      stroke(r9, g9 - 20, b9 - 20);
      fill(r9, g9 - 20, b9 - 20);
      ellipse(this.x, this.y, 50, 50);
    },
    mousePressed: function() {
      var d9 = dist(mouseX, mouseY, this.x, this.y);
      if (d9 < 28) {
        r9 = 255;
        g9 = g9 - 20;
        b9 = b9 - 20;
      }
    }
  }

}

function draw() {
  //FINGER
  // 'aspect' to keep ratio of image
  var aspect = img.height / img.width;
  var imageWidth = 150;
  var imageHeight = imageWidth * aspect;

  background(255, 249, 249);

  fingerTopLeft = {
    x: (windowWidth/1200)*200,
    y: (windowHeight/640)*110,
    aspect: img.height / img.width,
    imageWidth: 150,
    imageHeight: imageWidth * aspect,

    show: function() {
      push();
      translate(this.x, this.y);
      scale(-1, 1);
      //rotate(radians(frameCount*finger1)
      rotate(radians(finger1));
      image(img, 0, 0, imageWidth, imageHeight);
      pop();

    },
    mousePressed: function() {
      var dfinger1 = dist(mouseX, mouseY, this.x, this.y);
      if (dfinger1 < 300) {
        finger1 = finger1 + 45;
      }
    }
  }

  /*
  //fingerTopLeft
  //'push' or 'pop'for isolated behaviours
  push ();
  // 'imageMode' set pivot point to center of image
  '
  // 'translate': placing pivot point on X-Y grid
  translate(200, 110);
  // 'scale' to flip
  scale(-1,1);
  rotate(radians(frameCount * 1.1));
  image(img, 0, 0, imageWidth, imageHeight);
  pop ();
  */

  fingerBottomLeft = {
    x: (windowWidth/1200)*200,
    y: (windowHeight/640)*420,
    aspect: img.height / img.width,
    imageWidth: 150,
    imageHeight: imageWidth * aspect,

    show: function() {
      push();
      translate(this.x, this.y);
      scale(-1, 1);
      rotate(radians(finger2));
      image(img, 0, 0, imageWidth, imageHeight);
      pop();

    },
    mousePressed: function() {
      var dfinger2 = dist(mouseX, mouseY, this.x, this.y);
      if (dfinger2 < 300) {
        finger2 = finger2 + 45;
      }
    }
  }
  /*
  //fingerBottomLeft
  push ();
  '
  translate(200, 420);
  //scale(-1,1);
  rotate(radians(frameCount * 2));
  image(img, 0, 0, imageWidth, imageHeight);
  pop ();
  */

  fingerTopMid = {
    x: (windowWidth/1200)*580,
    y: (windowHeight/640)*50,
    aspect: img.height / img.width,
    imageWidth: 150,
    imageHeight: imageWidth * aspect,

    show: function() {
      push();
      translate(this.x, this.y);
      scale(-1, 1);
      rotate(radians(finger3));
      image(img, 0, 0, imageWidth, imageHeight);
      pop();

    },
    mousePressed: function() {
      var dfinger3 = dist(mouseX, mouseY, this.x, this.y);
      if (dfinger3 < 200) {
        finger3 = finger3 + 45;
      }
    }
  }
  /*
  //fingerTopMid
  push ();
  '
  translate(580, 150);
  scale(-1,1);
  rotate(radians(frameCount));
  image(img, 0, 0, imageWidth, imageHeight);
  pop ();
  */

  fingerMidMid = {
    x: (windowWidth/1200)*700,
    y: (windowHeight/640)*320,
    aspect: img.height / img.width,
    imageWidth: 150,
    imageHeight: imageWidth * aspect,

    show: function() {
      push();
      translate(this.x, this.y);
      scale(-1, 1);
      rotate(radians(finger4));
      image(img, 0, 0, imageWidth, imageHeight);
      pop();

    },
    mousePressed: function() {
      var dfinger4 = dist(mouseX, mouseY, this.x, this.y);
      if (dfinger4 < 200) {
        finger4 = finger4 + 45;
      }
    }
  }

  /*
  //fingerMidMid
  push ();
  '
  translate(680, 350);
  scale(-1,1);
  rotate(radians(frameCount * 2.5));
  image(img, 0, 0, imageWidth, imageHeight);
  pop ();
  */

  fingerBottomMid = {
    x: (windowWidth/1200)*550,
    y: (windowHeight/640)*480,
    aspect: img.height / img.width,
    imageWidth: 150,
    imageHeight: imageWidth * aspect,

    show: function() {
      push();
      translate(this.x, this.y);
      scale(-1, 1);
      rotate(radians(finger5));
      image(img, 0, 0, imageWidth, imageHeight);
      pop();

    },
    mousePressed: function() {
      var dfinger5 = dist(mouseX, mouseY, this.x, this.y);
      if (dfinger5 < 200) {
        finger5 = finger5 + 45;
      }
    }
  }

  /*
  //fingerBottomMid
  push ();
  '
  translate(500, 550);
  rotate(radians(frameCount * 3));
  image(img, 0, 0, imageWidth, imageHeight);
  pop ();
  */

  fingerTopRight = {
    x: (windowWidth/1200)*1100,
    y: (windowHeight/640)*105,
    aspect: img.height / img.width,
    imageWidth: 150,
    imageHeight: imageWidth * aspect,

    show: function() {
      push();
      translate(this.x, this.y);
      scale(-1, 1);
      rotate(radians(finger6));
      image(img, 0, 0, imageWidth, imageHeight);
      pop();

    },
    mousePressed: function() {
      var dfinger6 = dist(mouseX, mouseY, this.x, this.y);
      if (dfinger6 < 200) {
        finger6 = finger6 + 45;
      }
    }
  }

  /*
  //fingerTopRight
  push ();
  '
  translate(900, 105);
  scale(-1,1);
  rotate(radians(frameCount * 2));
  image(img, 0, 0, imageWidth, imageHeight);
  pop ();
  */

  fingerBottomRight = {
    x: (windowWidth/1200)*1000,
    y: (windowHeight/640)*450,
    aspect: img.height / img.width,
    imageWidth: 150,
    imageHeight: imageWidth * aspect,

    show: function() {
      push();
      translate(this.x, this.y);
      scale(-1, 1);
      rotate(radians(finger7));
      image(img, 0, 0, imageWidth, imageHeight);
      pop();

    },
    mousePressed: function() {
      var dfinger7 = dist(mouseX, mouseY, this.x, this.y);
      if (dfinger7 < 200) {
        finger7 = finger7 + 45;
      }
    }
  }
  /*
  //fingerBottomRight
  push ();
  '
  translate(1000, 450);
  rotate(radians(frameCount * 1.2));
  image(img, 0, 0, imageWidth, imageHeight);
  pop ();
  */

  mozzie.show();
  mozzie2.show();
  mozzie3.show();
  mozzie4.show();
  mozzie5.show();
  mozzie6.show();
  mozzie7.show();
  mozzie8.show();
  mozzie9.show();

  fingerTopLeft.show();
  fingerBottomLeft.show();
  fingerTopMid.show();
  fingerMidMid.show();
  fingerBottomMid.show();
  fingerTopRight.show();
  fingerBottomRight.show();
}

function mousePressed() {
  mozzie.mousePressed();
  mozzie2.mousePressed();
  mozzie3.mousePressed();
  mozzie4.mousePressed();
  mozzie5.mousePressed();
  mozzie6.mousePressed();
  mozzie7.mousePressed();
  mozzie8.mousePressed();
  mozzie9.mousePressed();

  fingerTopLeft.mousePressed();
  fingerBottomLeft.mousePressed();
  fingerTopMid.mousePressed();
  fingerMidMid.mousePressed();
  fingerBottomMid.mousePressed();
  fingerTopRight.mousePressed();
  fingerBottomRight.mousePressed();
}
