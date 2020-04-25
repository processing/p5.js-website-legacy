/*
 * @name 울프램 셀룰러 오토마타
 * @description 1차원 셀룰러 오토마타(cellular automata) 간단하게 구현하기.
 * (<a href="http://natureofcode.com">natureofcode.com</a>)
 */

let w = 10;
// 0과 1들의 배열
let cells;

 // "1"의 상태를 갖는 중간 셀과 함께 시작합니다.
let generation = 0;

// {0,1,1,0,1,1,0,1}과 같은 규칙 묶음(ruleset)을 저장하는 배열
let ruleset = [0, 1, 0, 1, 1, 0, 1, 0];

function setup() {
  createCanvas(640, 400);
  cells = Array(floor(width / w));
  for (let i = 0; i < cells.length; i++) {
    cells[i] = 0;
  }
  cells[cells.length/2] = 1;

}

function draw() {
  for (let i = 0; i < cells.length; i++) {
    if (cells[i] === 1) {
      fill(200);
    } else {
      fill(51);
      noStroke();
      rect(i * w, generation * w, w, w);
    }
  }
  if (generation < height/w) {
    generate();
  }
}

// 새로운 세대(generation) 생성 과정
function generate() {
  // 먼저, 새로운 값을 위한 빈 배열을 만듭니다.
  let nextgen = Array(cells.length);
  // 매 셀마다 현재 상태를 확인하여 새로운 상태를 결정하고 이 둘을 이웃하게 만듭니다.
  // 모서리에 위치하여 한 개의 이웃만을 가진 상태는 무시합니다.
  for (let i = 1; i < cells.length-1; i++) {
    let left   = cells[i-1];   // 좌측 이웃 상태
    let me     = cells[i];     // 현재 상태
    let right  = cells[i+1];   // 우측 이웃 상태
    nextgen[i] = rules(left, me, right); // 다음 세대 상태를 규칙 묶음(ruleset)에 의거하여 계산
  }
  // 현재 상태가 새로운 세대가 됩니다.
  cells = nextgen;
  generation++;
}


// 울프램 규칙 구현하기
// 더 향상되거나 간결해질 수도 있지만, 여기서 각 사례별로 어떤 일이 일어나는지 명확히 볼 수 있습니다.
function rules(a, b, c) {
  if (a == 1 && b == 1 && c == 1) return ruleset[0];
  if (a == 1 && b == 1 && c == 0) return ruleset[1];
  if (a == 1 && b == 0 && c == 1) return ruleset[2];
  if (a == 1 && b == 0 && c == 0) return ruleset[3];
  if (a == 0 && b == 1 && c == 1) return ruleset[4];
  if (a == 0 && b == 1 && c == 0) return ruleset[5];
  if (a == 0 && b == 0 && c == 1) return ruleset[6];
  if (a == 0 && b == 0 && c == 0) return ruleset[7];
  return 0;
}

