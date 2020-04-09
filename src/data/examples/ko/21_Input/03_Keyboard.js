/*
<<<<<<< HEAD
 * @name 키보드
 * @description 이미지를 클릭하여 포커스를 주고
 * 키보드 입력을 통해 화면에 모양을 만듭니다.
 * 각 자판은 고유의 식별 번호를 갖습니다. 
 * 이 번호들은 도형의 화면 상 위치를 정합니다.
=======
 * @name Keyboard
 * @description Click on the image to give it focus and
 * press the letter keys to create forms in time and space.
 * Each key has a unique identifying number. These numbers
 * can be used to position shapes in space.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let rectWidth;

function setup() {
  createCanvas(720, 400);
  noStroke();
  background(230);
  rectWidth = width / 4;
}

function draw() {
<<<<<<< HEAD
  // draw()를 여기에 작성하여 키보드 입력을 기다리는 동안 반복되게 합니다.
=======
  // keep draw() here to continue looping while waiting for keys
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
}

function keyPressed() {
  let keyIndex = -1;
  if (key >= 'a' && key <= 'z') {
    keyIndex = key.charCodeAt(0) - 'a'.charCodeAt(0);
  }
  if (keyIndex === -1) {
<<<<<<< HEAD
    // 글자 자판이 아닐 경우, 화면을 비웁니다.
    background(230);
  } else {
    // 글자 자판일 경우, 사각면을 채웁니다.
=======
    // If it's not a letter key, clear the screen
    background(230);
  } else {
    // It's a letter key, fill a rectangle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    randFill_r = Math.floor(Math.random() * 255 + 1);
    randFill_g = Math.floor(Math.random() * 255 + 1);
    randFill_b = Math.floor(Math.random() * 255 + 1);
    fill(randFill_r, randFill_g, randFill_b);
    let x = map(keyIndex, 0, 25, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }
}
