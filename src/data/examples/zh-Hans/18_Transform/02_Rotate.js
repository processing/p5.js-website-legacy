/*
 * @name 旋转
 * @description 围绕 Z 轴旋转一个正方形。
 * 要获得您期望的结果，请发送角度值介于 0 和 PI*2 之间的参数
 * （TWO_PI 是大约 6.28）给rotate()函数。
 * 如果您更喜欢用度数表示(0-360)，
 * 您可以使用 radians() 方法来转换您的值。
 * 例如：scale(radians(90)) 等同于语句
 * 比例（PI/2）。 在这个例子中，每偶数秒一个抖动
 * 被添加到旋转中。 在奇数秒旋转移动 CW 和
 * CCW 以最后一个抖动值确定的速度。
 */

let angle = 0.0;
let jitter = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255);
  //从中心绘制矩形，它也将围绕那个中心旋转
  rectMode(CENTER);
}

function draw() {
  background(51);

  // 在偶数秒 (0, 2, 4, 6...) 中添加抖动旋转
  if (second() % 2 === 0) {
    jitter = random(-0.1, 0.1);
  }
  //使用最近的抖动值增加角度值
  angle = angle + jitter;
  //在不抖动时使用余弦获得平滑的 CW 和 CCW 运动
  let c = cos(angle);
  //将形状移动到画布的中心
  translate(width / 2, height / 2);
  //应用最终旋转
  rotate(c);
  rect(0, 0, 180, 180);
}
