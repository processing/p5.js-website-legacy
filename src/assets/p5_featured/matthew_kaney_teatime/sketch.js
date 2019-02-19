var teapot1;
var teapot2;
var cup;

var teapotLayers = [];

var lastPosition;
var stillCount;

var colorWidth = 40;
var colorOffset = 0;

function setup(){
  createCanvas(windowWidth, windowHeight, WEBGL);
  
  lastPosition = new p5.Vector(mouseX, mouseY);
  
  teapot1 = loadModel('teapot.obj');
  teapot2 = loadModel('crockery_pot.obj');
  cup = loadModel('koffie.obj');
  
  directionalLight(125, 125, 125, -1, 1, 0.5);
  ambientLight(125);
  
  colorMode(HSB, 255);
}

function draw(){
  if(dist(lastPosition.x, lastPosition.y, mouseX, mouseY) > 0) {
    stillCount = 0;
    colorOffset = floor(random(255));
  } else {
    if(stillCount >= 10) {
      if((stillCount - 10) % 60 == 0) {
        var newWidth = width / height * 900 * 0.5;
        var newX = map(mouseX, 0, width, -newWidth, newWidth);
        var newY = map(mouseY, 0, height, -450, 450);
        
        var layer = {};
        layer.center = new p5.Vector(newX, newY);
        layer.startFrame = frameCount;
        layer.axis = (random(1) < 0.5) ? 'x' : 'y';
        layer.rotation = random(0.1);
        layer.orbit = random(0.05) - 0.025;
        layer.number = floor(random(5, 30));
        layer.color = color((floor(random(colorWidth)) + colorOffset) % 255, 255, 255);
        layer.direction = floor(random(2));
        
        layer.model = (random(1) < 0.35) ? teapot1 : (random(1) < 0.5) ? cup : teapot2;
        
        teapotLayers.push(layer);
      }
    }
    
    stillCount++;
  }
  
  lastPosition = new p5.Vector(mouseX, mouseY);
  
  for(var i = 0; i < teapotLayers.length; ++i) {
    var frameOffset = frameCount - teapotLayers[i].startFrame;
    var radius = frameOffset;
    var cx = teapotLayers[i].center.x;
    var cy = teapotLayers[i].center.y;
    
    specularMaterial(teapotLayers[i].color);
    
    var modelScale = constrain(frameOffset / 2, 0, 50);
    if(frameOffset > 300) {
      modelScale = map(frameOffset, 300, 350, 50, 0);
      
      if(frameOffset >= 350) {
        teapotLayers[i].cull = true;
      }
    }
    
    for(var j = 0; j < teapotLayers[i].number; ++j) {
      var angle = j * PI * 2 / teapotLayers[i].number + teapotLayers[i].orbit * frameOffset;
      
      push();
      
      translate(cos(angle) * radius + cx, -sin(angle) * radius + cy, -frameOffset * 0.2);
      rotateZ(angle + PI * teapotLayers[i].direction);
      
      if(teapotLayers[i].axis == 'x') {
        rotateX(teapotLayers[i].rotation * frameOffset);
      } else {
        rotateY(teapotLayers[i].rotation * frameOffset);
      }
      
      scale(modelScale);
      model(teapotLayers[i].model);
      
      pop();
    }
  }
  
  if(teapotLayers.length > 0 && teapotLayers[0].cull) {
    teapotLayers.shift();
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  perspective(60 / 180 * PI, width/height, 0.1, 100);
}