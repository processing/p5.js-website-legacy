/*
 * @name 创建图像
 * @description createImage() 函数能让我们巧妙地操控一个像素缓冲区。 此范例创建了一个渐变图像。
 */
let img; // 声明变量 'img'

function setup() {
  createCanvas(720, 400);
  // 设置图像大小 230x230 像素
  img = createImage(230, 230);

  // 将显示窗口的像素资料加载到 pixels[] 数组里
  // 这函数必须在读写 pixels[] 之前被调用
  img.loadPixels();
  for (let x = 0; x < img.width; x++) {
    for (let y = 0; y < img.height; y++) {
      let a = map(y, 0, img.height, 255, 0);
      // 使用 set() 设置该位置像素的颜色
      img.set(x, y, [0, 153, 204, a]);
    }
  }
  // 使用 set() 后，必须调用updatePixels() 以使改变生效
  img.updatePixels();
}

function draw() {
  background(0);
  image(img, 90, 80);
  image(img, mouseX - img.width / 2, mouseY - img.height / 2);
}
