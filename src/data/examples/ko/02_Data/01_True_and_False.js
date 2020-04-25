/*
 * @name 참과 거짓
 * @description 불리언(Boolean) 변수는 오직 'true(참)'과 'false(거짓)'이라는 두 개의 값만 갖습니다.
 * 불리언과 함께 제어문을 사용하여 프로그램의 흐름을 조정하는 것이 일반적인 방식입니다. 
 * 이 예제에서는, b값이 'true(참)'일 때 세로선들이 그려지고
 * b값이 'false(거짓)'일 때 가로선들이 그려집니다.
 */
function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);

  let b = false;
  let d = 20;
  let middle = width / 2;

  for (let i = d; i <= width; i += d) {
    b = i < middle;

    if (b === true) {
      // 세로선
      line(i, d, i, height - d);
    }

    if (b === false) {
      // 가로선
      line(middle, i - middle + d, width - d, i - middle + d);
    }
  }
}
