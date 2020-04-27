/*
 * @name 간단한 드로잉
 * @description mouseX, mouseY, pmouseX, pmouseY 값을 사용하여 스크린을 터치했을 때 그려지도록 합니다.
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
