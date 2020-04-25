/*
 * @name 비디오 픽셀
 * @frame 320,240
 * @description <p>비디오를 불러와 픽셀을 조정하고 캔버스에 그려보세요.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 비디오 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
let fingers;

function setup() {
  createCanvas(320, 240);
  // 여러 브라우저 지원을 위해 다양한 비디오 형식 지정
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  fingers.loop();
  fingers.hide();
  noStroke();
  fill(0);
}

function draw() {
  background(255);
  fingers.loadPixels();
  const stepSize = round(constrain(mouseX / 8, 6, 32));
  for (let y = 0; y < height; y += stepSize) {
    for (let x = 0; x < width; x += stepSize) {
      const i = y * width + x;
      const darkness = (255 - fingers.pixels[i * 4]) / 255;
      const radius = stepSize * darkness;
      ellipse(x, y, radius, radius);
    }
  }
}
