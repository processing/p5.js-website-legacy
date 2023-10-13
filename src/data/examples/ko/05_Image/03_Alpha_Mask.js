/*
 * @name 알파 마스크
 * @description 이미지 일부의 투명도를 설정하기 위해 마스크를 불러옵니다.
 * 이미지와 마스크는 p5.Image의 mask() 메소드를 통해 합쳐집니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면, 이미지 파일을 준비하시고
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시키세요.</span></em></p>
 */
let img;
let imgMask;

function preload() {
  img = loadImage('assets/moonwalk.jpg');
  imgMask = loadImage('assets/mask.png');
}

function setup() {
  createCanvas(720, 400);
  img.mask(imgMask);
  imageMode(CENTER);
}

function draw() {
  background(0, 102, 153);
  image(img, width / 2, height / 2);
  image(img, mouseX, mouseY);
}
