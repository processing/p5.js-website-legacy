/*
 * @name Create Graphics
 * @description 创建并返回一个新的 p5.Renderer 对象。如果你需要绘制到屏幕外的图形缓冲区，请使用这个种类。这两个参数以像素为单位定义宽度和高度。
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

  //使用 image() 将屏幕外的缓冲区绘制到屏幕上
  image(pg, 150, 75);
}
