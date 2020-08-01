/*
 * @name 글자
 * @description 폰트를 불러와 글자 속성을 정하면, 화면에 글자를 그릴 수 있습니다.
 * 이 예제에서는 for 반복문과 유니코드 참조 번호를 사용하여,
 * 그리드 속 글자들로 캔버스를 자동으로 채웁니다.
 * 이 중, 모음들에만 특정 색상이 부여됩니다.
 */
let font,
  fontsize = 32;

function preload() {
  // setup()과 draw()를 호출하기에 앞서,
  // assets 파일 경로에 .ttf 또는 .otf 폰트가 저장 및 로드되었는지 확인하세요. 
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

  // 텍스트 속성 설정
  textFont(font);
  textSize(fontsize);
  textAlign(CENTER, CENTER);
}

function draw() {
  background(160);

  // 글자 간, 그리고 글자와 좌측 및 상단 간의 margin(여백) 설정
  let gap = 52;
  let margin = 10;
  translate(margin * 4, margin * 4);

  // 원하는 글자에서 시작하도록 카운터 설정
  // 이 예제에서는 유니코드 35, 즉 # 기호입니다.
  let counter = 35;

  // 캔버스에 공간이 확보되는 한 반복하기
  for (let y = 0; y < height - gap; y += gap) {
    for (let x = 0; x < width - gap; x += gap) {
      // 카운터를 사용해 유니코드 번호로 개별 글자를 검색
      let letter = char(counter);

      // 모음과 기타 글자들에 각각 다른 색상 더하기
      if (
        letter === 'A' ||
        letter === 'E' ||
        letter === 'I' ||
        letter === 'O' ||
        letter === 'U'
      ) {
        fill('#ed225d');
      } else {
        fill(255);
      }

      // 화면에 글자 그리기
      text(letter, x, y);

      // 카운터 증가시키기
      counter++;
    }
  }
}
