/*
<<<<<<< HEAD
 * @name 노이즈 파형
 * @description 펄린 노이즈를 사용하여 파도같은 패턴을 만듭니다.
 * 다니엘 쉬프만(Daniel Shiffman) 원본 제작.
 */
let yoff = 0.0; // 펄린 노이즈의 2차원
=======
 * @name Noise Wave
 * @description Using Perlin Noise to generate a wave-like pattern.
 * Original by Daniel Shiffman.
 */
let yoff = 0.0; // 2nd dimension of perlin noise
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function setup() {
  createCanvas(710, 400);
}

function draw() {
  background(51);

  fill(255);
<<<<<<< HEAD
  // 파형의 점들을 이용한 다각형 그리기
  beginShape();

  let xoff = 0; // 옵션 #1: 2D 노이즈
  // let xoff = yoff; // 옵션 #2: 1D 노이즈

  // 가로 픽셀들에 반복
  for (let x = 0; x <= width; x += 10) {
    // y값을 노이즈에 따라 계산, 다음에 맵핑(map)하기

    // 옵션 #1: 2D 노이즈
    let y = map(noise(xoff, yoff), 0, 1, 200, 300);

    // 옵션 #2: 1D 노이즈
    // let y = map(noise(xoff), 0, 1, 200,300);

    // 버텍스 설정하기
    vertex(x, y);
    // 노이즈의 x차원 증가하기
    xoff += 0.05;
  }
  // 노이즈의 y차원 증가하기
=======
  // We are going to draw a polygon out of the wave points
  beginShape();

  let xoff = 0; // Option #1: 2D Noise
  // let xoff = yoff; // Option #2: 1D Noise

  // Iterate over horizontal pixels
  for (let x = 0; x <= width; x += 10) {
    // Calculate a y value according to noise, map to

    // Option #1: 2D Noise
    let y = map(noise(xoff, yoff), 0, 1, 200, 300);

    // Option #2: 1D Noise
    // let y = map(noise(xoff), 0, 1, 200,300);

    // Set the vertex
    vertex(x, y);
    // Increment x dimension for noise
    xoff += 0.05;
  }
  // increment y dimension for noise
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}
