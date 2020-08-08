//Javascript
function scrollDisable(){
    $('html, body').addClass('hidden');
}
function scrollAble(){
    $('html, body').removeClass('hidden');
}
function scrollDisable(){
    $('body').addClass('scrollDisable').on('scroll touchmove mousewheel', function(e){
        e.preventDefault();
    });
}


var sentence = "나라의 말이 중국과 달라 문자로 서로 통하지 아니하여서 이런 까닭으로 어리석은 백성이 말하고자 하는 바가 있어도 마침내 제 뜻을 능히 펴지 못하는 사람이 많다 내가 이를 위하여 가엾이 여겨 새로 스물여덟 자를 만드니 사람마다 하여금 쉬이 익혀 날마다 씀에 편안하게 하고자 할 따름이다";

var kdtree;
var particles = [];
var isMobile;

function isMobileDevice() {
  return (typeof window.orientation !== "undefined") || (navigator.userAgent.indexOf('IEMobile') !== -1);
}

function setup() {
  createCanvas(windowWidth, windowHeight);
  isMobile = isMobileDevice();
  sentence = sentence.replace(/ /g, "");
  textFont("Noto Sans KR");
  print(sentence.length);
  let sentenceLength = isMobile ? sentence.length / 3 : sentence.length;

  for (let i = 0; i < sentenceLength; i++) {
    particles.push(new Particle(createVector(random(width), random(height)),
      sentence[(i * 2) % sentence.length], sentence[(i * 2 + 1) % sentence.length], i
    ));
  }
}



function draw() {

  background(color(250, 247, 247));
  kdtree = new KDTree(createVector(width * 0.5, height * 0.5), 0);
  for (let i = 0; i < particles.length; i++) {
    kdtree.insert(particles[i]);
  }



  for (let i = 0; i < particles.length; i++) {
    let currentPosition = particles[i].position;
    let desiredPosition = particles[i].desiredPosition;
    let velocity = particles[i].velocity;

    let textColor = particles[i].textColor;
    let desiredColor = particles[i].desiredColor;

    for (let j = 0; j < 3; j++) {
      textColor[j] += (desiredColor[j] - textColor[j]) * 0.03;
    }

    let newDirection = createVector();
    let newDPDirection = createVector();
    for (let j = 0; j < particles.length; j++) {
      let subDirection = p5.Vector.sub(currentPosition, particles[j].position);
      subDirection.mult(exp(-subDirection.mag() * 0.5))
      newDirection.add(subDirection);
    }
    velocity.add(newDirection);


    let mouseAttraction = p5.Vector.sub(particles[i].position, createVector(mouseX, mouseY));
    velocity.add(mouseAttraction.normalize().mult(exp(-mouseAttraction.mag())));
    
    if(currentPosition.x > width || currentPosition.x < 0){
      desiredPosition.x += currentPosition.x > width ? -1 : 1;
    }
    if(currentPosition.y > height || currentPosition.y < 0){
      desiredPosition.y += currentPosition.y > height ? -1 : 1;
    }

    velocity.add(p5.Vector.sub(desiredPosition, currentPosition).mult(0.01));

    velocity.mult(0.9);
    currentPosition.add(velocity);
  }
  kdtree.draw();
}

function mousePressed() {
  for (let i = 0; i < particles.length; i++) {
    let desiredPosition = particles[i].desiredPosition;
    desiredPosition.x = random(width);
    desiredPosition.y = random(height);
  }
}

function touchStarted() {
  for (let i = 0; i < particles.length; i++) {
    let desiredPosition = particles[i].desiredPosition;
    desiredPosition.x = random(width);
    desiredPosition.y = random(height);
  }
}

function touchMoved() {
  let test = kdtree.search(createVector(mouseX, mouseY));
  if (test != null) {
    test.particle.textColor = [250, 247, 247];
  }
}

function mouseMoved() {
  let test = kdtree.search(createVector(mouseX, mouseY));
  if (test != null) {
    test.particle.textColor = [250, 247, 247];
  }
}

function keyPressed() {
  for (let i = 0; i < particles.length; i++) {
    let desiredPosition = particles[i].desiredPosition;
    desiredPosition.x = random(width);
    desiredPosition.y = random(height);
  }
}

let KDTree = function() {
  this.root = null;
  this.size = 100;
};

KDTree.prototype.insert = function(particle) {
  this.root = KDNode.prototype.insert(this.root, particle, 0, 0, width, height, 1);
};

KDTree.prototype.search = function(position) {
  return this.root.search(this.root, position, 1);
}

KDTree.prototype.draw = function() {
  if (this.root) {
    this.root.draw(this.root, true);
  }
};


let Particle = function(position, leftTextContent, rightTextContent, index) {
  this.position = position;
  this.desiredPosition = createVector(random(width), random(height));
  this.velocity = createVector();
  this.leftTextContent = leftTextContent;
  this.rightTextContent = rightTextContent;
  // this.leftColor = colorList[parseInt(random(colorList.length))];
  // this.rightColor = colorList[parseInt(random(colorList.length))];
  this.textColor = [250, 247, 247];
  this.desiredColor = [225, 222, 222];

  this.index = index;
}




let KDNode = function( /*PVector*/ p, /*PVector*/ minP, /*PVector*/ maxP) {
  this.particle = p;
  this.minP = minP
  this.maxP = maxP;
  this.left_down = null;
  this.right_up = null;
};

KDNode.prototype.draw = function(node, drawVert) {
  if (!node) {
    return;
  }
  let round = 0;
  let textSizeValue = 30;
  let textColor = color(50, 46, 47);
  textSize(textSizeValue);
  noStroke();
  let rectWidth, rectHeight, rectX, rectY = null;
  if (drawVert == true) {
    // rectMode(CENTER)
    textAlign(CENTER, CENTER);
    if (node.right_up == null) {
      rectWidth = node.maxP.x - node.particle.position.x;
      rectHeight = node.maxP.y - node.minP.y;
      rectX = node.particle.position.x + rectWidth * 0.5;
      rectY = node.minP.y + rectHeight * 0.5;
      // rect(rectX, rectY, rectWidth, rectHeight, round);

      push();
      translate(rectX, rectY);
      scale((rectWidth) / (textWidth(node.particle.leftTextContent) + 10), (rectHeight - 5) / textSizeValue);
      fill(node.particle.textColor);
      text(node.particle.leftTextContent, 0, 0);
      pop();
    }
    if (node.left_down == null) {
      rectWidth = node.particle.position.x - node.minP.x;
      rectHeight = node.maxP.y - node.minP.y;
      rectX = node.minP.x + rectWidth * 0.5;
      rectY = node.minP.y + rectHeight * 0.5;
      // rect(rectX, rectY, rectWidth, rectHeight, round);

      push();
      translate(rectX, rectY);
      scale((rectWidth) / (textWidth(node.particle.rightTextContent) + 10), (rectHeight - 5) / textSizeValue);
      fill(node.particle.textColor);
      text(node.particle.rightTextContent, 0, 0);
      pop();
    }
  } else {
    if (node.right_up == null) {
      rectWidth = node.maxP.x - node.minP.x;
      rectHeight = node.maxP.y - node.particle.position.y;
      rectX = node.minP.x + rectWidth * 0.5;
      rectY = node.particle.position.y + rectHeight * 0.5;
      // rect(rectX, rectY, rectWidth, rectHeight, round);

      push();
      translate(rectX, rectY);
      scale((rectWidth) / (textWidth(node.particle.leftTextContent) + 10), (rectHeight - 5) / textSizeValue);
      fill(node.particle.textColor);
      text(node.particle.leftTextContent, 0, 0);
      pop();
    }
    if (node.left_down == null) {
      rectWidth = node.maxP.x - node.minP.x;
      rectHeight = node.particle.position.y - node.minP.y;
      rectX = node.minP.x + rectWidth * 0.5;
      rectY = node.minP.y + rectHeight * 0.5;
      // rect(rectX, rectY, rectWidth, rectHeight, round);

      push();
      translate(rectX, rectY);
      scale((rectWidth) / (textWidth(node.particle.rightTextContent) + 10), (rectHeight - 5) / textSizeValue);
      fill(node.particle.textColor);
      text(node.particle.rightTextContent, 0, 0);
      pop();
    }
  }
  KDNode.prototype.draw(node.left_down, !drawVert)
  KDNode.prototype.draw(node.right_up, !drawVert)
}

KDNode.prototype.search = function( /*KDNode*/ node, /*Vector*/ p, /*boolean*/ isHorizontal) {
  if (node == null) {
    return node;
  } else if (node.particle.position.x == p.x && node.particle.position.y == p.y) {
    print("same!")
    return node;
  }
  // The current node is vertical: compare x-coordinates
  let searched = null;

  if (isHorizontal) {
    isHorizontal = !isHorizontal;
    if (p.x - node.particle.position.x < 0) {
      if (node.left_down != null) {
        searched = node.search(node.left_down, p, isHorizontal);
      } else {
        return node;
      }
    } else {
      if (node.right_up != null) {
        searched = node.search(node.right_up, p, isHorizontal);
      } else {
        return node;
      }
    }
  }
  // The current node is horizontal: compare y-coordinates
  else {
    isHorizontal = !isHorizontal;
    if (p.y - node.particle.position.y < 0) {
      if (node.left_down != null) {
        searched = node.search(node.left_down, p, isHorizontal);
      } else {
        return node;
      }
    } else {
      if (node.right_up != null) {
        searched = node.search(node.right_up, p, isHorizontal);
      } else {
        return node;
      }
    }
  }

  return searched;
}

KDNode.prototype.insert = function( /*KDNode*/ node, /*Particle*/ p, /*float*/ x0, /*float*/ y0, /*float*/ x1, /*float*/ y1, /*int*/ xcmp) {
  if (node == null) {
    return new KDNode(p, createVector(x0, y0), createVector(x1, y1));
  } else if (node.particle.position.x == p.position.x && node.particle.position.y == p.position.y) return node;
  // The current node is vertical: compare x-coordinates
  if (xcmp == 1) {
    xcmp = 0;
    let cmp = p.position.x - node.particle.position.x;
    if (cmp < 0)
      node.left_down = node.insert(node.left_down, p, x0, y0, node.particle.position.x, y1, xcmp);
    else
      node.right_up = node.insert(node.right_up, p, node.particle.position.x, y0, x1, y1, xcmp);
  }
  // The current node is horizontal: compare y-coordinates
  else {
    xcmp = 1;
    let cmp = p.position.y - node.particle.position.y;
    if (cmp < 0)
      node.left_down = node.insert(node.left_down, p, x0, y0, x1, node.particle.position.y, xcmp);
    else
      node.right_up = node.insert(node.right_up, p, x0, node.particle.position.y, x1, y1, xcmp);
  }
  return node;
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  for (let i = 0; i < particles.length; i++) {
    let desiredPosition = particles[i].desiredPosition;
    desiredPosition.x = random(width);
    desiredPosition.y = random(height);
  }
}