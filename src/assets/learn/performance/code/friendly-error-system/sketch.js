// Results in Chrome:
// 
//  Friendly Errors Disabled:
//    "Random took: 271.43ms."
//  
//  Friendly Errors Enabled:
//    "Random took: 1534.10ms."
//  
// Results in p5 Editor:
// 
//  Friendly Errors Disabled:
//    "Random took: 1885.23ms."
//  
//  Friendly Errors Enabled:
//    "Random took: 3147.38ms."

p5.disableFriendlyErrors = false;

var iterations = 10000000;

function setup() {
  createCanvas(800, 600);

  var start = millis();
  for (var i = 0; i < iterations; i++) {
    random();
  }
  var elapsed = millis() - start;
  console.log("Random took: " + elapsed.toFixed(2) + "ms.")
}