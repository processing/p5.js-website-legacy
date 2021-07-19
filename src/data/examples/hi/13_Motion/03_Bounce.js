/*
  * @name उछाल
  * @frame 720,400
  * @description जब आकृति खिड़की के किनारे से टकराती है, तो वह अपनी दिशा उलट देती है।
  */

let rad = 60; // आकार की चौड़ाई
let xpos, ypos; // आकार की प्रारंभिक स्थिति

let xspeed = 2.8; // आकार की गति
let yspeed = 2.2; // आकार की गति

let xdirection = 1; // बायें या दायें
let ydirection = 1; // ऊपर से नीचे

function setup() {
  createCanvas(720, 400);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // आकृति की प्रारंभिक स्थिति निर्धारित करें
  xpos = width / 2;
  ypos = height / 2;
}

function draw() {
  background(102);

  // आकृति की स्थिति को अपडेट करें
  xpos = xpos + xspeed * xdirection;
  ypos = ypos + yspeed * ydirection;

   // यह देखने के लिए परीक्षण करें कि क्या आकार स्क्रीन की सीमाओं से अधिक है
   // यदि ऐसा होता है, तो -1 . से गुणा करके इसकी दिशा उलट दें
  if (xpos > width - rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height - rad || ypos < rad) {
    ydirection *= -1;
  }

  // आकृति बनाएं
  ellipse(xpos, ypos, rad, rad);
}
