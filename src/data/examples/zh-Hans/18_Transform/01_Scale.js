/*
 * @name 缩放
 * @description scale() 函数的参数是值
 * 指定为小数百分比。 例如，
 * 调用方法 scale(2.0) 将增加形状的尺寸
 * 200%。 对象总是从原点缩放。 这个例子
 * 显示变换如何累积以及缩放和平移如何
 * 根据他们的顺序进行交互。
 */

let a = 0.0;
let s = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  //从中心点开始画所有的矩形，而不是从默认的左上角开始。
  rectMode(CENTER);
}

function draw() {
  background(102);

  //缓慢地增加'a'，然后用's'做动画。
  //通过寻找'a'的余弦来实现平滑的循环运动
  a = a + 0.04;
  s = cos(a) * 2;

  //将我们的矩形从原点移到画布的中间。
  //然后用's'缩放它。
  translate(width / 2, height / 2);
  scale(s);
  fill(51);
  rect(0, 0, 50, 50);

  //translate和scale都是累加的，所以这个translate
  //将第二个矩形移动到比第一个矩形更右的位置
  //规模扩大了一倍。 注意余弦
  //使's'既正又负，因此图像将从左到右的循环。
  translate(75, 0);
  fill(255);
  scale(s);
  rect(0, 0, 50, 50);
}
