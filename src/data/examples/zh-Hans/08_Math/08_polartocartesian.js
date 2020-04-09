/*
 * @name PolarToCartesian
 * @description 转换极坐标 (r,theta) 到笛卡尔坐标 (x,y): x = rcos(theta) y = rsin(theta)。
 * 作者：Daniel Shiffman
 */
let r;

// 角度，角速度，角加速度
let theta;
let theta_vel;
let theta_acc;

function setup() {
  createCanvas(710, 400);

  // 初始化所有值
  r = height * 0.45;
  theta = 0;
  theta_vel = 0;
  theta_acc = 0.0001;
}

function draw() {
  background(0);

  // 将原点设为屏幕中心
  translate(width/2, height/2);

  // 转换极坐标到笛卡尔坐标
  let x = r * cos(theta);
  let y = r * sin(theta);

  // 在笛卡尔坐标系上画椭圆
  ellipseMode(CENTER);
  noStroke();
  fill(200);
  ellipse(x, y, 32, 32);

  // 应用加速度和速度到角度上
  // （此示例中 r 保持静态）
  theta_vel += theta_acc;
  theta += theta_vel;
}
