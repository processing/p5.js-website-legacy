/*
<<<<<<< HEAD
 * @name 드롭 기능
 * @description 여러분의 로컬 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>
 * 를 추가하면 됩니다.<br><br>
 * 이미지 파일을 캔버스에 드래그 & 드롭하여 화면에 보이는지 확인해보세요.
 */

function setup() {
  // 캔버스 생성
  const c = createCanvas(710, 400);
  background(100);
  // 캔버스에 이미지 파일이 드롭될 때 이벤트 추가
=======
 * @name Drop
 * @description You will need to include the
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>
 * for this example to work in your own project.<br><br>
 * Drag an image file onto the canvas to see it displayed.
 */

function setup() {
  // create canvas
  const c = createCanvas(710, 400);
  background(100);
  // Add an event for when a file is dropped onto the canvas
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  c.drop(gotFile);
}

function draw() {
  fill(255);
  noStroke();
  textSize(24);
  textAlign(CENTER);
  text('Drag an image file onto the canvas.', width / 2, height / 2);
  noLoop();
}

function gotFile(file) {
<<<<<<< HEAD
  // 드롭된 파일이 이미지 파일이라면,
  if (file.type === 'image') {
    // 이미지 DOM 요소를 생성하되, 화면엔 띄우지 않는다.
    const img = createImg(file.data).hide();
    // 이미지를 캔버스에 그린다.
=======
  // If it's an image file
  if (file.type === 'image') {
    // Create an image DOM element but don't show it
    const img = createImg(file.data).hide();
    // Draw the image onto the canvas
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    image(img, 0, 0, width, height);
  } else {
    console.log('Not an image file!');
  }
}
