let imgCount = 12;
let imgs = imgCount;
let imgW;

// Keeps track of loaded images (true or false)
let loadStates = new imgCount;

// For loading animation
let loaderX, loaderY, theta;

function setup() {
  size(640, 360);
  imgW = width/imgCount;

  // Load images asynchronously
  for (let i = 0; i < imgCount; i++){
    imgs[i] = requestImage("PT_anim"+nf(i, 4)+".gif");
  }
}

function draw(){
  background(0);
  
  // Start loading animation
  runLoaderAni();
  
  for (let i = 0; i < imgs.length; i++){
    // Check if individual images are fully loaded
    if ((imgs[i].width != 0) && (imgs[i].width != -1)){
      // As images are loaded set true in boolean array
      loadStates[i] = true;
    }
  }
  // When all images are loaded draw them to the screen
  if (checkLoadStates()){
    drawImages();
  }
}

function drawImages() {
  let y = (height - imgs[0].height) / 2;
  for (let i = 0; i < imgs.length; i++){
    image(imgs[i], width/imgs.length*i, y, imgs[i].height, imgs[i].height);
  }
};

// Loading animation
function runLoaderAni(){
  // Only run when images are loading
  if (!checkLoadStates()){
    ellipse(loaderX, loaderY, 10, 10);
    loaderX += 2;
    loaderY = height/2 + sin(theta) * (height/8);
    theta += PI/22;
    // Reposition ellipse if it goes off the screen
    if (loaderX > width + 5){
      loaderX = -5;
    }
  }
};

// Return true when all images are loaded - no false values left in array 
function checkLoadStates(){
  for (let i = 0; i < imgs.length; i++){
    if (loadStates[i] == false){
      return false;
    } 
  }
  return true;
}