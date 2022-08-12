let xSlider, ySlider, zSlider;
let p;

function setup() {
  createCanvas(150, 200, WEBGL);

  debugMode();

  xSlider = createSlider(-100, 100, 0);
  ySlider = createSlider(-100, 100, 0);
  zSlider = createSlider(-100, 100, 0);

  p = createP("");
  p.style("font-size", "16px");
  p.position(10, height - 50);
}

function draw() {
  background(220);
  camera(0, -200, 200, 0, 0, 0);

  translate(xSlider.value(), ySlider.value(), zSlider.value());
  box(50);

  p.html(
    "(" +
      xSlider.value() +
      ", " +
      ySlider.value() +
      ", " +
      zSlider.value() +
      ")"
  );
}
