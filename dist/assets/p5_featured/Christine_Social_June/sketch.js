var BobsUno, options, sliderValue, sketch, slider,
    isActiveBobMode = false;

function setup() {

  sketch = createCanvas(windowWidth, windowHeight)
  sketch.id("p5Canvas");

  colorMode(HSB);
  frameRate(30);

  options = {
    doRunBobs: true,
    doDisplayBob: true,
    bobSize: 20,
    doRunInterference: true,
    fieldPulseRate: 1
  };
  BobsUno = new BobSystem();
}

function draw() {
  background(255);

  BobsUno.runBobs();
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}