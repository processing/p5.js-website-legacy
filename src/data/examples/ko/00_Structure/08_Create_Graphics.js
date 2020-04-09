/*
<<<<<<< HEAD
 * @name 그래픽 만들기
 * @description 새로운 p5.Renderer 오브젝트를 만들고 반환합니다.
 * 아래의 클래스는 특정 사각 스크린의 바깥 영역에 그래픽 버퍼를 만드는 데에 사용됩니다.
 * 두 인수들은 사각 스크린의 너비와 높이값을 픽셀 단위로 각각 지정합니다.
=======
 * @name Create Graphics
 * @description Creates and returns a new p5.Renderer object. Use this
 * class if you need to draw into an off-screen graphics buffer. The two parameters
 * define the width and height in pixels.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let pg;

function setup() {
  createCanvas(710, 400);
  pg = createGraphics(400, 250);
}

function draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(mouseX, mouseY, 60, 60);

  pg.background(51);
  pg.noFill();
  pg.stroke(255);
  pg.ellipse(mouseX - 150, mouseY - 75, 60, 60);

<<<<<<< HEAD
  //image() 선언문으로 사각 스크린 바깥에 위치한 그래픽 버퍼를 그립니다.
=======
  //Draw the offscreen buffer to the screen with image()
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  image(pg, 150, 75);
}
