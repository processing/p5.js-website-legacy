//Bob
function Bob() {

  //Internal Properties
  var bobView = this,
    //Booleans
      doRunInterference = true,
      doRunBob = true,
      doDisplayBob = true,
      activeBobMode = false,
      isPassThrough = false,
      isPairing = true,
      diversityValue = 255,

    //Scalars
      fieldPulseRate = 0,
      size = 20,
      hue = Math.floor(Math.random() * 256),
      fieldPulseFrame = 0,
      pushForce,
      driveForce = createVector(0, 0),
      radius = size/2,
      tempXPos = Math.floor(Math.random() * (width-size) + size/2),
      tempYPos = Math.floor(Math.random() * (height-size) + size/2);

  //External Properties
  bobView.isActiveBob = false;
  bobView.size = 20;
  bobView.radius = radius;
  bobView.hue = hue;
  bobView.fieldRings = Math.floor(Math.random() * 12 + 3);
  bobView.fieldSize = 464;
  bobView.fieldRadius = bobView.fieldSize/2;
  bobView.fieldIncrement = bobView.fieldRadius/bobView.fieldRings;
  bobView.fieldIncrementMultiplier = Math.random() * 2 + 1;

    //Vectors
  bobView.position = createVector(tempXPos, tempYPos);
  bobView.velocity = p5.Vector.random2D().mult(4);
  bobView.acceleration = createVector(0, 0);

    //Arrays
  bobView.forces = [];
  
  //bobView.run(bills)
  //Operates the Bob, passing it the list of other Bobs (as bills)
  bobView.run = function(bills) {

    if(doRunInterference) {
      bills.forEach(bobView.runInterference, this);
    }

    if(bobView.isActiveBob) {
      bobView.driveBob();
    }

    if(doRunBob) {
      bobView.update(bills);
    }

    bobView.display();
    bobView.reset();
  }
  
  //bobView.update()
  //Updates the position vectors of the Bob, no params
  bobView.update = function(bills) {
    bobView.forces.forEach(bobView.addForce);
    bobView.velocity.add(bobView.acceleration.x, bobView.acceleration.y);
    bobView.velocity.limit(7);
    bobView.position.add(bobView.velocity.x, bobView.velocity.y);
    if(isPassThrough){
      bobView.passThrough();
    } else {
      bobView.checkForWalls();
    }
  }

  bobView.checkForWalls = function() {
    if((bobView.position.x - radius) <= 0){  
      bobView.position.x = radius;
      if(bobView.velocity.x < 0){
        bobView.velocity.x *= -1; 
      }
    }
    if((bobView.position.x + radius) >= width){  
      bobView.position.x = width - radius; 
      if(bobView.velocity.x > 0){
        bobView.velocity.x *= -1; 
      }
    }
    if((bobView.position.y - radius) <= 0){ 
      bobView.position.y = radius; 
      if(bobView.velocity.y < 0){
        bobView.velocity.y *= -1; 
      }
    }
    if((bobView.position.y + radius) >= height){ 
      bobView.position.y = height - radius; 
      if(bobView.velocity.y > 0){
        bobView.velocity.y *= -1; 
      }
    }
  }

  bobView.passThrough = function() {
    if((bobView.position.x + radius) <= 0){  
      bobView.position.x = width;
    }
    if((bobView.position.x - radius) >= width){  
      bobView.position.x = 0 - radius;
    }
    if((bobView.position.y + radius) <= 0){ 
      bobView.position.y = height;
    }
    if((bobView.position.y - radius) >= height){ 
      bobView.position.y = 0 - radius;
    }
  }

  bobView.addForce = function(force, index, forces) {
    bobView.acceleration.add(force.x, force.y);
  }
  
  //bobView.display()
  //Runs the functions that create the visual appearance of the Bob, no params
  bobView.display = function() {
    if(activeBobMode && bobView.isActiveBob){
      bobView.renderField();
    }
    bobView.renderBob();
  }
  
  bobView.runInterference = function(bill, index, bills) {
  	var thisBob = bobView,
  		  otherBob = bill,
        distance = p5.Vector.dist(thisBob.position, otherBob.position),
        dVector = p5.Vector.sub(otherBob.position, thisBob.position),
        dNormal = dVector.normalize();

    fieldPulseFrame = fieldPulseFrame % bobView.fieldIncrement;
    
    //if otherBob is not thisBob
    if(distance > 0) {
      //for each ring of thisBob's field
      for(var i = fieldPulseFrame; i < thisBob.fieldRadius; i+=thisBob.fieldIncrement) {
        //for each ring of otherBob's field
        for(var j = fieldPulseFrame; j < otherBob.fieldRadius; j+=otherBob.fieldIncrement) {
          //check if the two rings intersect
          var areIntersecting = checkIntersect(
                                thisBob.position.x, 
                                thisBob.position.y, 
                                i, 
                                otherBob.position.x, 
                                otherBob.position.y, 
                                j
                              );
                                              
          switch(areIntersecting) {
          //fields intersect and have intersection points
            case 1:
              bobView.handleIntersection(thisBob, otherBob, distance, i, j);
              break;

          //If one of the fields is contained in the other
            case -1:
              // renderOverlapShape(i);
              break;

            default:
              break;
          }
        }
      }
    }
  }

  bobView.handleIntersection = function(thisBob, otherBob, distance, i, j) {
    var intersections,
        firstIntersectionPoint,
        secondIntersectionPoint,
        pushForceFactor,
        pushVector1,
        pushVector2,
        hueDifference;

    intersections = getIntersections(
                      thisBob.position.x, 
                      thisBob.position.y, 
                      i, 
                      otherBob.position.x, 
                      otherBob.position.y, 
                      j
                    );

    firstIntersectionPoint = createVector(intersections[0], intersections[1]);
    secondIntersectionPoint = createVector(intersections[2], intersections[3]);

    if(!activeBobMode || (activeBobMode && bobView.isActiveBob)) {
      bobView.renderIntersectShape(intersections, distance, otherBob.hue, i);
    }

    hueDifference = bobView.getHueGap(thisBob.hue, otherBob.hue);

    if(isPairing) {
      pushForce = (43.75 - hueDifference)/63.75;
    } else {
      pushForce = (hueDifference - 20)/63.75;
    }

    diversityFactor = map(diversityValue, 0, 255, 0, 63.75);

    pushForce *= diversityFactor;

    pushForceFactor = pushForce / (i * j);

    pushVector1 = p5.Vector.sub(thisBob.position, firstIntersectionPoint)
      .normalize()
      .mult(pushForceFactor);

    pushVector2 = p5.Vector.sub(thisBob.position, secondIntersectionPoint)
      .normalize()
      .mult(pushForceFactor);

    bobView.forces.push(pushVector1);
    bobView.forces.push(pushVector2);
  }
  
  bobView.renderBob = function() {
    noStroke();

    if(bobView.isActiveBob) {
      strokeWeight(4);
      stroke(0, 0, 255, 100);
    }

    if(bobView.isActiveBob || !activeBobMode){
      fill(hue, diversityValue, 200);
    } else {
      fill(hue, diversityValue, 200, 150);
    }
    ellipse(bobView.position.x, bobView.position.y, size, size);
  }
  
  bobView.renderIntersectShape = function(intersections, distance, otherHue, i) {
    var circleNormal = createVector(radius, 0),
        distIntA = createVector(intersections[0], intersections[1]),
        distIntB = createVector(intersections[2], intersections[3]),
        angle1, angle2, newHue, opacity;

    newHue = bobView.averageHues(bobView.hue, otherHue);

    if(activeBobMode && bobView.isActiveBob) {
      opacity = map(i, 0, bobView.fieldSize, 0, 255);
      opacity = (255-opacity);
    } else {
      opacity = 200;
    }
        
    
    //Dots
    var dotSize =4;
    noStroke();

    for (var i = dotSize; i > 0; i--){
      fill(newHue, diversityValue, 200, (opacity/3));
      ellipse(distIntA.x, distIntA.y, dotSize, dotSize);
      if(activeBobMode && bobView.isActiveBob) {
        ellipse(distIntB.x, distIntB.y, dotSize, dotSize);
      }
    }
    //Arcs
    /*
    distIntA.sub(position);
    distIntB.sub(position);
    
    if(distance.x > 0){
      if(distIntA.y < distance.y){
        angle1 = getArcAngle(circleNormal, distIntA);
        angle2 = getArcAngle(circleNormal, distIntB);
      } else {
        angle1 = getArcAngle(circleNormal, distIntB);
        angle2 = getArcAngle(circleNormal, distIntA);
      }
      
      if((angle1 - PI) >  angle2){
        angle2 += TWO_PI;
      }
    } else {
      if(distIntA.y > distance.y){
        angle1 = getArcAngle(circleNormal, distIntA);
        angle2 = getArcAngle(circleNormal, distIntB);
      } else {
        angle1 = getArcAngle(circleNormal, distIntB);
        angle2 = getArcAngle(circleNormal, distIntA);
      }
      
      if((angle1 - PI) >  angle2){
        angle2 += TWO_PI;
      }
    }
    fill(100, 1);
    noStroke();
    arc(position.x, position.y, 2*tempSize, 2*tempSize, angle1, angle2, OPEN);
    */
  }

  bobView.getHueGap = function(hue1, hue2) {
    var hueDifference, hueGap;
    hueDifference = Math.abs(hue1 - hue2);

    if(hueDifference > 128){
      hueGap = (255 - hueDifference)/2;
    } else {
      hueGap = hueDifference/2;
    }

    return hueGap;
  }

  bobView.averageHues = function(hue1, hue2) {
    var baseHue, newHue, hueGap, hueDifference,
        maxHue = 255;
    hueDifference = Math.abs(hue1 - hue2);
    
    if(hueDifference > (maxHue/2)){
      if(hue1 > hue2) {
        baseHue = hue1;
      } else {
        baseHue = hue2;
      }

      hueGap = (maxHue - hueDifference)/2;
    } else {
      if(hue1 < hue2) {
        baseHue = hue1;
      } else {
        baseHue = hue2;
      }

      hueGap = hueDifference/2;
    }

    newHue = (baseHue + hueGap) % maxHue;
    return newHue;
  }
  
  bobView.renderOverlapShape = function(shapeSize){
    noFill();
    strokeWeight(2);
    stroke(0, 0, 0);
    ellipse(bobView.position.x, bobView.position.y, 2*shapeSize, 2*shapeSize);
  }
  
  bobView.renderField = function() {
    strokeWeight(1);
    noFill();
    for(var i = fieldPulseFrame; i < bobView.fieldRadius; i+=bobView.fieldIncrement){
      var opacity = map(i, 0, bobView.fieldRadius, 255, 0);
      stroke(hue, 200, 200, opacity);
      ellipse(bobView.position.x, bobView.position.y, 2*i, 2*i);
    }
  }

  bobView.driveBob = function() {
    var driveForceMag,
        driveForceIncrement = 0.1;

    if (keyIsDown(LEFT_ARROW))
      driveForce.add(-1 * driveForceIncrement, 0);

    if (keyIsDown(RIGHT_ARROW))
      driveForce.add(driveForceIncrement, 0);

    if (keyIsDown(UP_ARROW))
      driveForce.add(0, -1 * driveForceIncrement);

    if (keyIsDown(DOWN_ARROW))
      driveForce.add(0, driveForceIncrement);

    bobView.forces.push(driveForce);

    driveForceMag = driveForce.mag();

    
    if(driveForceMag > 0.01){
      driveForce.mult(0.9);
    } else if(driveForceMag > 0){
      driveForce.mult(0);
    }
  }

  bobView.reset = function() {
    bobView.acceleration.mult(0);
    bobView.velocity.mult(0.99999);
    bobView.forces = [];
    fieldPulseFrame += fieldPulseRate;
  }
}