/*
 * @name 3D 노이즈
 * @frame 710,400 (선택 사항)
 * @description 3D 노이즈를 사용하여 간단한 동적 텍스처를 만듭니다.
 */

let noiseVal;
//x를 0.01씩 증가
let x_increment = 0.01;
//draw()함수 사이클마다 z를 0.02씩 증가
let z_increment = 0.02;

//Offset values
let z_off, y_off, x_off;

function setup() {
  //캔버스 만들기
  createCanvas(640, 360);
  //프레임 속도 조정
  frameRate(20);
  //z_off의 초기값
  z_off = 0;
}

function draw() {
  x_off = 0;
  y_off = 0;
  //배경을 검정색으로 설정
  background(0);
  //노이즈 디테일 조정
  noiseDetail(8, 0.65);

  //매 x,y마다 노이즈값 계산
  for (let y = 0; y < height; y++) {
    x_off += x_increment;
    y_off = 0;

    for (let x = 0; x < width; x++) {
      //각 픽셀을 계산하고 그리기
      noiseVal = noise(x_off, y_off, z_off);
      stroke(noiseVal * 255);
      y_off += x_increment;
      point(x, y);
    }
  }

  z_off += z_increment;
}
