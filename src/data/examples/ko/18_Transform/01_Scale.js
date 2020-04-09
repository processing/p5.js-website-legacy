/*
<<<<<<< HEAD
 * @name 크기 조정(Scale)
 * @description scale()함수의 매개 변수는 10진수 백분율로 표현됩니다.
 * 예를 들어, scale(2.0) 메소드 호출은 도형의 차원을 200 퍼센트 증가시킵니다.
 * 오브젝트의 크기는 항상 원점을 기준으로 조정됩니다. 
 * 이 예제는 그러한 변형이 축적되는 양상과, 순서에 따라 scale과 translate이
 * 상호작용하는 것을 보여줍니다.
=======
 * @name Scale
 * @description Paramenters for the scale() function are values
 * specified as decimal percentages. For example, the method
 * call scale(2.0) will increase the dimension of the shape by
 * 200 percent. Objects always scale from the origin. This example
 * shows how transforms accumulate and also how scale and translate
 * interact depending on their order.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let a = 0.0;
let s = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  //Draw all rectangles from their center as opposed to
  // the default upper left corner
  rectMode(CENTER);
}

function draw() {
  background(102);

  //Slowly increase 'a' and then animate 's' with
  //a smooth cyclical motion by finding the cosine of 'a'
  a = a + 0.04;
  s = cos(a) * 2;

  //Translate our rectangle from the origin to the middle of
  //the canvas, then scale it with 's'
  translate(width / 2, height / 2);
  scale(s);
  fill(51);
  rect(0, 0, 50, 50);

  //Translate and scale are accumulating, so this translate
  //moves the second rectangle further right than the first
  //and the scale is getting doubled. Note that cosine is
  //making 's' both negative and positive, thus it cycles
  //from left to right.
  translate(75, 0);
  fill(255);
  scale(s);
  rect(0, 0, 50, 50);
}
