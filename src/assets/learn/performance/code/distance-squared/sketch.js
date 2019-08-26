// Results in Chrome:
// 
//  p5 dist took:                 3205.14ms.
//  Distance squared squred took: 2921.55ms.
//  
// Results in p5 Editor:
// 
//  p5 dist took:                 5381.38ms.
//  Distance squared squred took: 2450.13ms.

p5.disableFriendlyErrors = true;

var iterations = 10000000;

function setup() {
  createCanvas(800, 600);

  // Setup random points that will be checked
  var points = [];
  for (var i = 0; i < iterations; i += 1) {
    points.push(random(-100, 100), random(-100, 100));
  }
  var maxDistance = 50;

  // -- DISTANCE ---------------------------------------------------------------
  
  var lastPoint = points[0];
  var start = millis();
  for (var i = 0; i < iterations; i++) {
    var d = dist(lastPoint.x, lastPoint.y, points[i].x, points[i].y);
    // Do something, e.g. collision detection, creating particles inside an area
    lastPoint = points[i];
  }
  var elapsed = millis() - start;
  console.log("p5 dist took: " + elapsed.toFixed(2) + "ms.")


  // -- DISTANCE SQUARED -------------------------------------------------------

  var maxDistanceSquared = maxDistance * maxDistance;
  var distSquared = function (x1, y1, x2, y2) {
    var dx = x2 - x1;
    var dy = y2 - y1;
    return dx * dx + dy * dy;
  }
  var lastPoint = points[0];
  var start = millis();
  for (var i = 0; i < iterations; i++) {
    var d = distSquared(lastPoint.x, lastPoint.y, points[i].x, points[i].y);
    // Do something, e.g. collision detection, creating particles inside an area
    lastPoint = points[i];
  }
  var elapsed = millis() - start;
  console.log("Distance squared squred took: " + elapsed.toFixed(2) + "ms.")

}