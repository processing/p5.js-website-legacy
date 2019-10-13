function setup() {
    size(640, 360);
  }
  
  function draw() {
    loadPixels();
    let n = (mouseX * 10.0) / width;
    let w = 16.0;         // 2D space width
    let h = 16.0;         // 2D space height
    let dx = w / width;    // Increment x this amount per pixel
    let dy = h / height;   // Increment y this amount per pixel
    let x = -w/2;          // Start x at -1 * width / 2
    for (let i = 0; i < width; i++) {
      let y = -h/2;        // Start y at -1 * height / 2
      for (let j = 0; j < height; j++) {
        let r = sqrt((x*x) + (y*y));    // Convert cartesian to polar
        let theta = atan2(y,x);         // Convert cartesian to polar
        // Compute 2D polar coordinate function
        let val = sin(n*cos(r) + 5 * theta);           // Results in a value between -1 and 1
        //float val = cos(r);                            // Another simple function
        //float val = sin(theta);                        // Another simple function
        // Map resulting vale to grayscale value
        pixels[i+j*width] = color((val + 1.0) * 255.0/2.0);     // Scale to between 0 and 255
        y += dy;                // Increment y
      }
      x += dx;                  // Increment x
    }
    updatePixels();
  }