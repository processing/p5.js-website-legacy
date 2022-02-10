/*
 * @name 背景图像
 * @description 此范例展示了最快加载背景图像的方法。
 * 若需将一张图像作为背景，它必须和程序有相同的宽度和高度。
 * <p><em><span class="small">要在本地运行此示例，您需要一个图像文件，并运行在<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * 本地伺服器</a>上。</span></em></p>
 */
let bg;
let y = 0;

function setup() {
  // 背景图像的大小必须和 createCanvas() 函数中的参数一样。
  // 该图像大小为 720x400 像素。
  bg = loadImage('assets/moonwalk.jpg');
  createCanvas(720, 400);
}

function draw() {
  background(bg);

  stroke(226, 204, 0);
  line(0, y, width, y);

  y++;
  if (y > height) {
    y = 0;
  }
}
