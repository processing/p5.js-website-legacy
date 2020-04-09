/*
<<<<<<< HEAD
 * @name 간단한 드로잉
 * @description mouseX, mouseY, pmouseX, pmouseY 값을 사용하여 스크린을 터치했을 때 그려지도록 합니다.
=======
 * @name Simple Draw
 * @description Touch to draw on the screen using mouseX, mouseY, pmouseX, and pmouseY values.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

function setup() {
  createCanvas(displayWidth, displayHeight);
  strokeWeight(10);
  stroke(0);
}

function touchMoved() {
  line(mouseX, mouseY, pmouseX, pmouseY);
  return false;
}
