/*
<<<<<<< HEAD
 * @name 점묘법
 * @description 다니엘 쉬프만(Dan Shiffman) 제작. 마우스의 가로 위치는 점의 크기를 조정합니다. 
 * 픽셀에 따라 색칠된 원형(ellipse)으로 간단한 점묘법 효과를 만듭니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면, 이미지 파일을 준비하시고
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시키세요.</span></em></p>
=======
 * @name Pointillism
 * @description By Dan Shiffman. Mouse horizontal location controls size of
 * dots. Creates a simple pointillist effect using ellipses colored according
 * to pixels in an image.
 * <p><em><span class="small"> To run this example locally, you will need an
 * image file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">
 * local server</a>.</span></em></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let img;
let smallPoint, largePoint;

function preload() {
  img = loadImage('assets/moonwalk.jpg');
}

function setup() {
  createCanvas(720, 400);
  smallPoint = 4;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
  img.loadPixels();
}

function draw() {
  let pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  let x = floor(random(img.width));
  let y = floor(random(img.height));
  let pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
