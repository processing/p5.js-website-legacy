/*
<<<<<<< HEAD
 * @name 저장된 JSON 불러오기
 * @description Bubble 클래스를 만들고, JSON 파일의 데이터를 사용해 버블 여러 개를 인스턴스화합니다.
 * 그리고, 그 결과물을 화면에 띄웁니다.
 * 웹 브라우저마다 파일 저장 위치가 다르기 때문에,
 * 프로세싱(Processing)의 예제와는 달리 saveJSON을 사용하지 않습니다.<br><br>
 * 다니엘 쉬프만(Daniel Shiffman)의 프로세싱(Processing)의 <a href="https://processing.org/examples/loadsavejson.html">LoadSaveJSON 예제</a> 참고
 */

// Bubble 클래스
=======
 * @name Load Saved JSON
 * @description Create a Bubble class, instantiate multiple bubbles using data from
 * a JSON file, and display results on the screen.
 *  Because the web browsers differ in where they save files, we do not make use of
 * saveJSON, unlike the Processing example.<br><br>
 * Based on Daniel Shiffman's <a href="https://processing.org/examples/loadsavejson.html">LoadSaveJSON Example</a> for Processing.
 */

// Bubble class
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
class Bubble {
  constructor(x, y, diameter, name) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.radius = diameter / 2;
    this.name = name;

    this.over = false;
  }

<<<<<<< HEAD
  // 마우스가 버블 위에 있는지 확인
=======
  // Check if mouse is over the bubble
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  rollover(px, py) {
    let d = dist(px, py, this.x, this.y);
    this.over = d < this.radius;
  }

<<<<<<< HEAD
  // 버블을 화면에 보이기
=======
  // Display the Bubble
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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

<<<<<<< HEAD
let data = {}; // loadJSON 호출의 결과물을 담는 전역 객체
let bubbles = []; // 모든 버블 객체를 담는 전역 배열

// 비동기 데이터 로딩을 preload에 담아 setup이 실행되기 전 완료시킴
=======
let data = {}; // Global object to hold results from the loadJSON call
let bubbles = []; // Global array to hold all bubble objects

// Put any asynchronous data loading in preload to complete before "setup" is run
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function preload() {
  data = loadJSON('assets/bubbles.json');
}

<<<<<<< HEAD
// 저장된 Bubble 데이터를 Bubble 객체로 전환
function loadData() {
  let bubbleData = data['bubbles'];
  for (let i = 0; i < bubbleData.length; i++) {
    // 배열 속 각 객체 받아오기
    let bubble = bubbleData[i];
    // position 객체 받아오기
    let position = bubble['position'];
    // 위치로부터 x,y 받아오기
=======
// Convert saved Bubble data into Bubble Objects
function loadData() {
  let bubbleData = data['bubbles'];
  for (let i = 0; i < bubbleData.length; i++) {
    // Get each object in the array
    let bubble = bubbleData[i];
    // Get a position object
    let position = bubble['position'];
    // Get x,y from position
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    let x = position['x'];
    let y = position['y'];

    // Get diameter and label
    let diameter = bubble['diameter'];
    let label = bubble['label'];

<<<<<<< HEAD
    // 배열에 객체 담기
=======
    // Put object in array
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    bubbles.push(new Bubble(x, y, diameter, label));
  }
}

<<<<<<< HEAD
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
=======
// Create a new Bubble each time the mouse is clicked.
function mousePressed() {
  // Add diameter and label to bubble
  let diameter = random(40, 80);
  let label = 'New Label';

  // Append the new JSON bubble object to the array
  bubbles.push(new Bubble(mouseX, mouseY, diameter, label));

  // Prune Bubble Count if there are too many
  if (bubbles.length > 10) {
    bubbles.shift(); // remove first item from array
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  }
}

function setup() {
  createCanvas(640, 360);
  loadData();
}

function draw() {
  background(255);

<<<<<<< HEAD
  // 모든 버블들 화면에 보이기
=======
  // Display all bubbles
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  for (let i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }

<<<<<<< HEAD
  // 하단에서의 레이블 방향들
=======
  // Label directions at bottom
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  textAlign(LEFT);
  fill(0);
  text('Click to add bubbles.', 10, height - 10);
}
