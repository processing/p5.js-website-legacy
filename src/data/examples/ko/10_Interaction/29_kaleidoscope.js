/*
 * @name 만화경
 * @description
436/5000
만화경은 두 개 이상의 반사면이 서로를 향해 비스듬히 기울어진 광학 기기를 말합니다.
이 예제는 만화경의 작동 원리를 복제하고 재현합니다. "대칭(symmetry)" 변수를 통해 반사 횟수를 조정하고 화면 위에 그림을 그려보세요.
슬라이더를 사용하여 브러시 크기를 조정할 수 있습니다. "clearButton"은 화면을 지웁니다. "saveButton" 버튼은 사용자가 만든 작품을 .jpg 파일로 다운로드합니다.
*/
// 반사 횟수에 따른 대칭을 설정합니다. 반사 횟수를 조정해보세요.
let symmetry = 6;   

let angle = 360 / symmetry;
let saveButton, clearButton, mouseButton, keyboardButton;
let slider;

function setup() { 
  createCanvas(710, 710);
  angleMode(DEGREES);
  background(127);

  // 파일 저장을 위한 saveButton 생성하기
  saveButton = createButton('save');
  saveButton.mousePressed(saveFile);

  // 화면 지우기를 위한 claerButton 생성하기
  clearButton = createButton('clear');
  clearButton.mousePressed(clearScreen);

  // 전체 화면 보기를 위한 fullscreenButton 생성하기
  fullscreenButton = createButton('Full Screen');
  fullscreenButton.mousePressed(screenFull);

  // 브러시 두께 조정을 위한 슬라이더 설정하기
  brushSizeSlider = createButton('Brush Size Slider');
  sizeSlider = createSlider(1, 32, 4, 0.1);
}

// 파일 저장 함수
function saveFile() {
  save('design.jpg');
}

// 화면 지우기 함수
function clearScreen() {
  background(127);
}

// 전체 화면 보기 함수
function screenFull() {
  let fs = fullscreen();
  fullscreen(!fs);
}

function draw() {
  translate(width / 2, height / 2);

  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    let mx = mouseX - width / 2;
    let my = mouseY - height / 2;
    let pmx = pmouseX - width / 2;
    let pmy = pmouseY - height / 2;
    
    if (mouseIsPressed) {
      for (let i = 0; i < symmetry; i++) {
        rotate(angle);
        let sw = sizeSlider.value();
        strokeWeight(sw);
        line(mx, my, pmx, pmy);
        push();
        scale(1, -1);
        line(mx, my, pmx, pmy);
        pop();
      }
    }
  }
}
