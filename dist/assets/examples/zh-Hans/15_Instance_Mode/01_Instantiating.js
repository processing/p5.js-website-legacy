/*
 * @name 创建实例
 * @description 创建一个 p5 实例，以便让所有变量在全局作用域之外。
 */
let sketch = function (p) {
  let x = 100;
  let y = 100;

  p.setup = function () {
    p.createCanvas(700, 410);
  };

  p.draw = function () {
    p.background(0);
    p.fill(255);
    p.rect(x, y, 50, 50);
  };
};

let myp5 = new p5(sketch);

// “全局模式” 作为对照
// let x = 100;
// let y = 100;

// function setup() {
//   createCanvas(200,200);
// }

// function draw() {
//   background(0);
//   fill(255);
//   ellipse(x,y,50,50);
// }
