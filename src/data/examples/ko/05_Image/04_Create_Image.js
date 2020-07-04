/*
 * @name 이미지 만들기
 * @description createImage() 함수로 재밌는 픽셀 버퍼를 만들 수 있습니다.
 * 이 예제는 그래디언트 이미지를 만듭니다.
 */
let img; // 'img' 변수 선언하기

function setup() {
  createCanvas(720, 400);
  img = createImage(230, 230);
  img.loadPixels();
  for (let x = 0; x < img.width; x++) {
    for (let y = 0; y < img.height; y++) {
      let a = map(y, 0, img.height, 255, 0);
      img.set(x, y, [0, 153, 204, a]);
    }
  }
  img.updatePixels();
}

function draw() {
  background(0);
  image(img, 90, 80);
  image(img, mouseX - img.width / 2, mouseY - img.height / 2);
}
