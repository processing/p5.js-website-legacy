/*
 * @name 브라운 운동
 * @description 무작위의 움직임을 연속된 선으로서 기록합니다.
 * 프로세싱(Processing) 공식 웹사이트의 '예제' 페이지상 원본 예제를 p5.js로 옮겨왔습니다.
 */

let num = 2000;
let range = 6;

let ax = [];
let ay = [];


function setup() {
  createCanvas(710, 400);
  for ( let i = 0; i < num; i++ ) {
    ax[i] = width / 2;
    ay[i] = height / 2;
  }
  frameRate(30);
}

function draw() {
  background(51);

  // 모든 요소들을 좌측으로 1자리 이동
  for ( let i = 1; i < num; i++ ) {
    ax[i - 1] = ax[i];
    ay[i - 1] = ay[i];
  }

  // 배열의 끝에 새로운 값 넣기
  ax[num - 1] += random(-range, range);
  ay[num - 1] += random(-range, range);

  // 모든 점들을 화면에 제한
  ax[num - 1] = constrain(ax[num - 1], 0, width);
  ay[num - 1] = constrain(ay[num - 1], 0, height);

  // 점들을 잇는 선 그리기
  for ( let j = 1; j < num; j++ ) {
    let val = j / num * 204.0 + 51;
    stroke(val);
    line(ax[j - 1], ay[j - 1], ax[j], ay[j]);
  }
}