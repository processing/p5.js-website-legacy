/*
 * @name 逻辑操作符
 * @description AND（&&）和 OR（||）的逻辑操作符被用于将简单的关系语句组合成更复杂的表达式
 * NOT (!) 操作符被用于否定布尔语句。
 */
let test = false;

function setup() {
  createCanvas(720, 360);
  background(126);

  for (let i = 5; i <= height; i += 5) {
    // 逻辑 AND
    stroke(0);
    if (i > 35 && i < 100) {
      line(width / 4, i, width / 2, i);
      test = false;
    }

    // 逻辑 OR
    stroke(76);
    if (i <= 35 || i >= 100) {
      line(width / 2, i, width, i);
      test = true;
    }

    // 测试布尔值是否为 “true”
    // 表达式 “if(test)” 等同于 "if(test == true)"
    if (test) {
      stroke(0);
      point(width / 3, i);
    }

    // 测试布尔值是否为 "false"
    // 表达式 “if(test)” 等同于 "if(test == false)"
    if (!test) {
      stroke(255);
      point(width / 4, i);
    }
  }
}
