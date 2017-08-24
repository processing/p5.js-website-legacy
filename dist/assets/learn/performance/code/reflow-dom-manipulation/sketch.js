// Results in Chrome:
// 
//  Creating divs in native JS took:  1.19ms.
//  Creating divs in p5 took:         479.57ms.
//  
// Note: tests are in functions so that the timeline in Chrome dev tools can
// provide useful debugging information. 

p5.disableFriendlyErrors = true;

var iterations = 1000;

function setup() {
  createCanvas(0, 0);

  nativeAddDivs();
  p5AddDivs();
}

function nativeAddDivs() {
  // Test
  var start = millis();
  var containerDiv = document.createElement("div");
  for (var i = 0; i < iterations; i++) {
    var childDiv = document.createElement("div");
    childDiv.textContent = i;
    containerDiv.appendChild(childDiv);
  }
  document.body.appendChild(containerDiv);
  var elapsed = millis() - start;
  console.log("Creating divs in native JS took: " + elapsed.toFixed(2) + "ms.")
  // Cleanup
  document.body.removeChild(containerDiv);
}

function p5AddDivs() {
  // Test
  var start = millis();
  var containerDiv = createDiv();
  for (var i = 0; i < iterations; i++) {
    var childDiv = createDiv(i);
    containerDiv.child(childDiv);
  }
  var elapsed = millis() - start;
  console.log("Creating divs in p5 took: " + elapsed.toFixed(2) + "ms.")
  // Cleanup
  containerDiv.remove();
}