/*
 * @name 2D 数组
 * @description 演示创建二维（2D）数组的句法。 2D 数组中的值是通过两个索引值来访问的。
 * 2D 阵列特别适用于对于存储图像。在该示例中，每个点是通过其相对于距图像中心的距离来进行着色的。
 */
let distances = [];
let maxDistance;
let spacer;

function setup() {
  createCanvas(720, 360);
  maxDistance = dist(width / 2, height / 2, width, height);
  for (let x = 0; x < width; x++) {
    distances[x] = []; // 创建嵌套数组
    for (let y = 0; y < height; y++) {
      let distance = dist(width / 2, height / 2, x, y);
      distances[x][y] = (distance / maxDistance) * 255;
    }
  }
  spacer = 10;
  noLoop(); // 执行一次之后停止
}

function draw() {
  background(0);
  // 这个嵌入式循环基于 spacer 变量跳过数组中的值，因此数组中的值多于此处绘制的值。更改 spacer 变量的值可以更改点的密度
  for (let x = 0; x < width; x += spacer) {
    for (let y = 0; y < height; y += spacer) {
      stroke(distances[x][y]);
      point(x + spacer / 2, y + spacer / 2);
    }
  }
}
