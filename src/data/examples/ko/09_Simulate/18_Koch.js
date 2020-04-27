/*
 * @name 코흐 곡선
 * @description 간단한 코흐 곡선 즉, 눈송이형 프랙탈을 만듭니다.
 * 각각의 재귀 단계는 순차적으로 그려집니다.
 * 다니엘 쉬프만(Daniel Shiffman) 제작
 */

let k;

function setup() {
  createCanvas(710, 400);
  frameRate(1);  // 천천히 움직이기
  k = new KochFractal();
}

function draw() {
  background(0);
  // 눈송이 그리기!
  k.render();
  // 반복하기
  k.nextLevel();
  // 5회를 초과하진 않습니다...
  if (k.getCount() > 5) {
    k.restart();
  }
}

// 선 하나를 프랙탈로 표현해주는 클래스
// midp5.Vectors가 코크 알고리즘에 의거하여 선을 계산하는 메소드를 포함합니다.

class KochLine {
  constructor(a,b) {
    // 두개의 p5.Vectors,
    // 시작은 "왼쪽" p5.Vector이고
    // 끝은 "오른쪽" p5.Vector입니다.
    this.start = a.copy();
    this.end = b.copy();
  }

  display() {
    stroke(255);
    line(this.start.x, this.start.y, this.end.x, this.end.y);
  }

  kochA() {
    return this.start.copy();
  }

  // 쉽지요? 여기까지 전체 내용의 1/3을 진행했어요.
  kochB() {
    let v = p5.Vector.sub(this.end, this.start);
    v.div(3);
    v.add(this.start);
    return v;
  }

  // 약간 복잡한데요, 이 p5의 위치를 알아내기 위해 약간의 삼각법을 사용합니다!
  kochC() {
    let a = this.start.copy(); // Start at the beginning
    let v = p5.Vector.sub(this.end, this.start);
    v.div(3);
    a.add(v);  // 점 B로 이동하기
    v.rotate(-PI/3); // 60도 회전하기
    a.add(v);  // 점 C로 이동하기
    return a;
  }

  // 쉽지요? 여기까지 전체 내용의 2/3을 진행했어요.
  kochD() {
    let v = p5.Vector.sub(this.end, this.start);
    v.mult(2/3.0);
    v.add(this.start);
    return v;
  }

  kochE() {
    return this.end.copy();
  }
}

//눈송이 패턴을 갖는 선분들을 배열로 관리하는 클래스입니다.
class KochFractal {
  constructor() {
    this.start = createVector(0,height-20);   // 시작점 p5.Vector
    this.end = createVector(width,height-20); // 끝점 p5.Vector
    this.lines = [];                         // 모든 선분을 추적하는 배열
    this.count = 0;
    this.restart();
  }

  nextLevel() {
    // 배열에 담긴 각각의 선분들에 대해
    // 4개의 선분들을 추가한, 새로운 배열을 만듭니다.
    this.lines = this.iterate(this.lines);
    this.count++;
  }

  restart() {
    this.count = 0;      // 카운트 리셋하기
    this.lines = [];  // 배열 비우기
    this.lines.push(new KochLine(this.start,this.end));  // 초기 선분 더하기(하나의 끝점 p5.Vector에서 다른 p5.Vector로)
  }

  getCount() {
    return this.count;
  }

  // 이 부분도 쉽습니다. 모든 선들을 그리는 함수이지요.
  render() {
    for(let i = 0; i < this.lines.length; i++) {
      this.lines[i].display();
    }
  }

  // This is where the **MAGIC** happens
  // Step 1: Create an empty arraylist
  // Step 2: For every line currently in the arraylist
  //   - calculate 4 line segments based on Koch algorithm
  //   - add all 4 line segments into the new arraylist
  // Step 3: Return the new arraylist and it becomes the list of line segments for the structure

  // As we do this over and over again, each line gets broken into 4 lines, which gets broken into 4 lines, and so on. . .
  iterate(before) {
    let now = [];    // Create emtpy list
    for(let i = 0; i < this.lines.length; i++) {
      let l = this.lines[i];
      // Calculate 5 koch p5.Vectors (done for us by the line object)
      let a = l.kochA();
      let b = l.kochB();
      let c = l.kochC();
      let d = l.kochD();
      let e = l.kochE();
      // Make line segments between all the p5.Vectors and add them
      now.push(new KochLine(a,b));
      now.push(new KochLine(b,c));
      now.push(new KochLine(c,d));
      now.push(new KochLine(d,e));
    }
    return now;
  }
}
