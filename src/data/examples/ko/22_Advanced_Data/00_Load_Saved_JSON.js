/*
 * @name 저장된 JSON 불러오기
 * @description Bubble 클래스를 만들고, JSON 파일의 데이터를 사용해 버블 여러 개를 인스턴스화합니다.
 * 그리고, 그 결과물을 화면에 띄웁니다.
 * 웹 브라우저마다 파일 저장 위치가 다르기 때문에,
 * 프로세싱(Processing)의 예제와는 달리 saveJSON을 사용하지 않습니다.<br><br>
 * 다니엘 쉬프만(Daniel Shiffman) 제작 프로세싱(Processing)의 <a href="https://processing.org/examples/loadsavejson.html">LoadSaveJSON 예제</a> 참고
 */

// Bubble 클래스
class Bubble {
  constructor(x, y, diameter, name) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.radius = diameter / 2;
    this.name = name;

    this.over = false;
  }

  // 마우스가 버블 위에 있는지 확인
  rollover(px, py) {
    let d = dist(px, py, this.x, this.y);
    this.over = d < this.radius;
  }

  // 버블을 화면에 보이기
  display() {
    stroke(0);
    strokeWeight(0.8);
    noFill();
    ellipse(this.x, this.y, this.diameter, this.diameter);
    if (this.over) {
      fill(0);
      textAlign(CENTER);
      text(this.name, this.x, this.y + this.radius + 20);
    }
  }
}

let data = {}; // loadJSON 호출의 결과물을 담는 전역 객체
let bubbles = []; // 모든 버블 객체를 담는 전역 배열

// 비동기 데이터 로딩을 preload에 담아 setup이 실행되기 전 완료시킴
function preload() {
  data = loadJSON('assets/bubbles.json');
}

// 저장된 Bubble 데이터를 Bubble 객체로 전환
function loadData() {
  let bubbleData = data['bubbles'];
  for (let i = 0; i < bubbleData.length; i++) {
    // 배열 속 각 객체 받아오기
    let bubble = bubbleData[i];
    // position 객체 받아오기
    let position = bubble['position'];
    // 위치로부터 x,y 받아오기
    let x = position['x'];
    let y = position['y'];

    // Get diameter and label
    let diameter = bubble['diameter'];
    let label = bubble['label'];

    // 배열에 객체 담기
    bubbles.push(new Bubble(x, y, diameter, label));
  }
}

// 마우스가 클릭될 때마다 새로운 Bubble 만들기
function mousePressed() {
  // Bubble에 지름과 레이블 더하기
  let diameter = random(40, 80);
  let label = 'New Label';

  // 배열에 새로운 JSON bubble 객체 더하기
  bubbles.push(new Bubble(mouseX, mouseY, diameter, label));

  // 버블이 너무 많을 경우 개수 제거하기
  if (bubbles.length > 10) {
    bubbles.shift(); // 배열의 첫 번째 항목 제거하기
  }
}

function setup() {
  createCanvas(640, 360);
  loadData();
}

function draw() {
  background(255);

  // 모든 버블들 화면에 보이기
  for (let i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }

  // 하단에서의 레이블 방향들
  textAlign(LEFT);
  fill(0);
  text('Click to add bubbles.', 10, height - 10);
}
