/*
<<<<<<< HEAD
 * @name 2D 배열
 * @description 2차원(2D) 배열 작성을 위한 구문입니다.
 * 2D 배열의 값은 두 개의 색인(index)값을 통해 가져올 수 있습니다.
 * 2D 배열은 이미지를 저장하는 데에 유용합니다. 
 * 이 예제에서 각 점의 색상은 이미지 중심으로부터의 거리에 따라 지정됩니다.
=======
 * @name Array 2D
 * @description Demonstrates the syntax for creating a two-dimensional (2D)
 * array. Values in a 2D array are accessed through two index values.
 * 2D arrays are useful for storing images. In this example, each dot
 * is colored in relation to its distance from the center of the image.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let distances = [];
let maxDistance;
let spacer;

function setup() {
  createCanvas(720, 360);
  maxDistance = dist(width / 2, height / 2, width, height);
  for (let x = 0; x < width; x++) {
<<<<<<< HEAD
    distances[x] = []; // 중첩 배열 만들기
=======
    distances[x] = []; // create nested array
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    for (let y = 0; y < height; y++) {
      let distance = dist(width / 2, height / 2, x, y);
      distances[x][y] = (distance / maxDistance) * 255;
    }
  }
  spacer = 10;
<<<<<<< HEAD
  noLoop(); // 한번 실행 후 멈추기
=======
  noLoop(); // Run once and stop
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
}

function draw() {
  background(0);
<<<<<<< HEAD
  // 이 함수에 내장된 반복문은 앞서 선언된 spacer변수에 따라 배열값 사이의 간격을 생성하게 됩니다.
  // 따라서, 이 함수로 그려진 것보다 더 많은 값이 배열에 있는 셈입니다.
  // spacer 변수의 값을 변경하여 점들 간의 밀도를 조정해보세요.
=======
  // This embedded loop skips over values in the arrays based on
  // the spacer variable, so there are more values in the array
  // than are drawn here. Change the value of the spacer variable
  // to change the density of the points
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let x = 0; x < width; x += spacer) {
    for (let y = 0; y < height; y += spacer) {
      stroke(distances[x][y]);
      point(x + spacer / 2, y + spacer / 2);
    }
  }
}
