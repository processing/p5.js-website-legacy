// Results in Chrome:
// 
//  Cached button took:     573.42ms.
//  Non-cached button took: 5925.31ms.

p5.disableFriendlyErrors = true;

var iterations = 100000;

function setup() {
  createCanvas(windowWidth, windowHeight);
  
  // -- REPOSITION BUTTON - CACHED LOOKUP --------------------------------------
  
  var start = millis();
  var button1 = select("#button-1");
  for (var i = 0; i < iterations; i++) {
    button1.position(random(0, width), random(0, height));
  }
  var elapsed = millis() - start;
  console.log("Cached button took: " + elapsed.toFixed(2) + "ms.")

  // -- REPOSITION BUTTON - NON-CACHED LOOKUP ----------------------------------
  
  var start = millis();
  for (var i = 0; i < iterations; i++) {
    var button2 = select("#button-2");
    button2.position(random(0, width), random(0, height));
  }
  var elapsed = millis() - start;
  console.log("Non-cached button took: " + elapsed.toFixed(2) + "ms.")
}