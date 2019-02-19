//Equations
function checkIntersect(x0, y0, r0, x1, y1, r1) {
  var doTheyIntersect,
      dx, 
      dy, 
      d;
  
  //Calculating distance between centerpoints
  dx = x1 - x0;
  dy = y1 - y0;
  d = sqrt(sq(dy)+sq(dx)); 
  
  //Using distance to determine if they intersect
  if(d > (r0 + r1)) {
    //No intersection
    doTheyIntersect = 0;
  } else if (d < abs(r0 - r1)){
    //One is contained within the other
    doTheyIntersect = -1;
  } else {
    
    //They intersect
    doTheyIntersect = 1;
  }
  
  return doTheyIntersect;
}

function getIntersections(x0, y0, r0, x1, y1, r1) {
  var dx, dy, d, a, x2, y2, h, rx, ry, xi1, xi2, yi1, yi2,
      intersectionPoints = [];
  
  dx = x1 - x0;
  dy = y1 - y0;
  d = sqrt(sq(dy)+sq(dx));

  a = ((r0*r0) - (r1*r1) + (d*d)) / (2.0 * d);
  x2 = x0 + (dx * a/d);
  y2 = y0 + (dy * a/d);
  h = sqrt(sq(r0) - sq(a));
  rx = (0-dy) * (h/d);
  ry = dx * (h/d);
  xi1 = x2 + rx;
  xi2 = x2 - rx;
  yi1 = y2 + ry;
  yi2 = y2 - ry;
  
  intersectionPoints[0] = xi1;
  intersectionPoints[1] = yi1;
  intersectionPoints[2] = xi2;
  intersectionPoints[3] = yi2;
  
  return intersectionPoints;
}

function getArcAngle(normal, intersection) {
  var angle;
  
  angle = p5.Vector.angleBetween(normal, intersection);
  
  if(intersection.y < 0){
    angle = TWO_PI - angle;
  }
  
  return angle;
}

function debounce(fn, delay) {
  var timer = null;
  return function () {
    var context = this, args = arguments;
    clearTimeout(timer);
    timer = setTimeout(function () {
      fn.apply(context, args);
    }, delay);
  };
}