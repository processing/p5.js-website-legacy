/*
<<<<<<< HEAD
 * @name 인스턴스화
 * @description p5 인스턴스를 만들어, 해당 페이지의 모든 변수들이
 * 전역 범위로서 사용되지 않도록 합니다.
=======
 * @name Instantiation
 * @description Create a p5 instance, which keeps all variables
 * out of the global scope of your page.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let sketch = function(p) {
  let x = 100;
  let y = 100;

  p.setup = function() {
    p.createCanvas(700, 410);
  };

  p.draw = function() {
    p.background(0);
    p.fill(255);
    p.rect(x, y, 50, 50);
  };
};

let myp5 = new p5(sketch);

<<<<<<< HEAD
// "전역 모드(global mode)"와 비교
=======
// Compare to "global mode"
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
