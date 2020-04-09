/*
<<<<<<< HEAD
 * @name L-시스템
 * @description 이 스케치는 린덴마이어(Lindenmayer) 또는 (L-) 시스템을 기반으로 한 자동 드로잉을 보여줍니다.
 * L-시스템은 자연적, 기하학적, 또는 재밌는 "프랙탈형" 패턴을 만드는 제너레이티브 그래픽에 쓰입니다.<br>
 * 이 예제는 <a href='http://lukedubois.com/' target='_blank'>R. Luke DuBois</a>가 제작하였습니다.<br>
 * <a href='https://en.wikipedia.org/wiki/L-system'>https://en.wikipedia.org/wiki/L-system</a>
 */
// 거북이:
let x, y; // 거북이의 현재 위치
let currentangle = 0; // 거북이가 가리키는 방향w
let step = 20; // 매 'F'마다 거북이가 움직이는 크기
let angle = 90; // '-' 또는 '+'에 따라 거북이가 회전하는 크기

// 린덴마이어 시스템(L-SYSTEMS)
let thestring = 'A'; // 공리, 또는 문자열의 시작
let numloops = 5; // 전처리할 반복문 개수
let therules = []; // 규칙 배열
therules[0] = ['A', '-BF+AFA+FB-']; // 첫 번째 규칙
therules[1] = ['B', '+AF-BFB-FA+']; // 두 번째 규칙

let whereinstring = 0; // L-시스템 상 현재 위치?
=======
 * @name L-Systems
 * @description This sketch creates an automated drawing based on a Lindenmayer
 * or (L-) system. L-systems are often used in procedural graphics to make
 * natural, geometric, or interesting "fractal-style" patterns.<br>
 * Example created by <a href='http://lukedubois.com/' target='_blank'>R. Luke DuBois</a>.<br>
 * <a href='https://en.wikipedia.org/wiki/L-system'>https://en.wikipedia.org/wiki/L-system</a>
 */
// TURTLE STUFF:
let x, y; // the current position of the turtle
let currentangle = 0; // which way the turtle is pointing
let step = 20; // how much the turtle moves with each 'F'
let angle = 90; // how much the turtle turns with a '-' or '+'

// LINDENMAYER STUFF (L-SYSTEMS)
let thestring = 'A'; // "axiom" or start of the string
let numloops = 5; // how many iterations to pre-compute
let therules = []; // array for rules
therules[0] = ['A', '-BF+AFA+FB-']; // first rule
therules[1] = ['B', '+AF-BFB-FA+']; // second rule

let whereinstring = 0; // where in the L-system are we?
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function setup() {
  createCanvas(710, 400);
  background(255);
  stroke(0, 0, 0, 255);

<<<<<<< HEAD
  // 좌측 하단 코너에서 x와 y 위치 시작
  x = 0;
  y = height-1;

  // L-시스템 처리하기
=======
  // start the x and y position at lower-left corner
  x = 0;
  y = height-1;

  // COMPUTE THE L-SYSTEM
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let i = 0; i < numloops; i++) {
    thestring = lindenmayer(thestring);
  }
}

function draw() {

<<<<<<< HEAD
  // 현재의 문자를 문자열로 그리기:
  drawIt(thestring[whereinstring]);

  // 문자열을 읽는 지점 증가하기
  // 마지막에 wrap around
=======
  // draw the current character in the string:
  drawIt(thestring[whereinstring]);

  // increment the point for where we're reading the string.
  // wrap around at the end.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  whereinstring++;
  if (whereinstring > thestring.length-1) whereinstring = 0;

}

<<<<<<< HEAD
// L-시스템 해석하기
function lindenmayer(s) {
  let outputstring = ''; // 빈 출력 문자열 시작하기

  // 'therules'를 반복하여 일치하는 기호 찾기:
  for (let i = 0; i < s.length; i++) {
    let ismatch = 0; // 기본값으로, 일치하는 기호 없음
    for (let j = 0; j < therules.length; j++) {
      if (s[i] == therules[j][0])  {
        outputstring += therules[j][1]; // 대체내용 작성
        ismatch = 1; // 일치하는 기호가 있으므로 복사하지 않음
        break; // for() 반복문 나오기
      }
    }
    // 일치하는 기호가 없으면 복사
    if (ismatch == 0) outputstring+= s[i];
  }

  return outputstring; // 수정된 문자열 전송
}

// 아래는 거북이를 그리는 사용자 정의 함수입니다.
function drawIt(k) {

  if (k=='F') { // 앞으로 그리기
    // step과 currentangle을 기준으로, 극좌표에서 직교 좌표로 변환하기:
    let x1 = x + step*cos(radians(currentangle));
    let y1 = y + step*sin(radians(currentangle));
    line(x, y, x1, y1); // 이전의 것과 새로운 것을 연결

    // 거북이의 위치 업데이트:
    x = x1;
    y = y1;
  } else if (k == '+') {
    currentangle += angle; // 왼쪽으로 돌기
  } else if (k == '-') {
    currentangle -= angle; // 오른쪽으로 돌기
  }

  // 무작위의 색상값을 주세요:
=======
// interpret an L-system
function lindenmayer(s) {
  let outputstring = ''; // start a blank output string

  // iterate through 'therules' looking for symbol matches:
  for (let i = 0; i < s.length; i++) {
    let ismatch = 0; // by default, no match
    for (let j = 0; j < therules.length; j++) {
      if (s[i] == therules[j][0])  {
        outputstring += therules[j][1]; // write substitution
        ismatch = 1; // we have a match, so don't copy over symbol
        break; // get outta this for() loop
      }
    }
    // if nothing matches, just copy the symbol over.
    if (ismatch == 0) outputstring+= s[i];
  }

  return outputstring; // send out the modified string
}

// this is a custom function that draws turtle commands
function drawIt(k) {

  if (k=='F') { // draw forward
    // polar to cartesian based on step and currentangle:
    let x1 = x + step*cos(radians(currentangle));
    let y1 = y + step*sin(radians(currentangle));
    line(x, y, x1, y1); // connect the old and the new

    // update the turtle's position:
    x = x1;
    y = y1;
  } else if (k == '+') {
    currentangle += angle; // turn left
  } else if (k == '-') {
    currentangle -= angle; // turn right
  }

  // give me some random color values:
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let r = random(128, 255);
  let g = random(0, 192);
  let b = random(0, 50);
  let a = random(50, 100);

<<<<<<< HEAD
  // 반지름에 대한 가우스 분포(D&D) 선택하기:
=======
  // pick a gaussian (D&D) distribution for the radius:
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let radius = 0;
  radius += random(0, 15);
  radius += random(0, 15);
  radius += random(0, 15);
  radius = radius / 3;

<<<<<<< HEAD
  // 그리기:
=======
  // draw the stuff:
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(r, g, b, a);
  ellipse(x, y, radius, radius);
}