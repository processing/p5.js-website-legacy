/*
 * @name 코흐 곡선
 * @description 간단한 코흐 곡선 즉, 눈송이형 프랙탈을 만듭니다.
 * 각각의 재귀 단계는 순차적으로 그려집니다.
 * 제작: 다니엘 쉬프만(Daniel Shiffman)
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

  // 이제부터 **마법**이 시작됩니다.
  // 1단계: 빈 배열 목록을 새로 생성합니다.
  // 2단계: 배열 목록에 현재 담긴 모든 선들에 대하여, 
  //   - 코흐 알고리즘에 따라 선분 4개를 계산하고, 
  //   - 이 4개의 선분들을 모두 새로운 배열 목록에 더합니다. 
  // 3단계: 새로운 배열 목록이 반환되고, 이 새 목록은 전체 구조의 선분들에 대한 목록이 됩니다.

  // 위의 단계를 반복하면, 모든 선들이 4개의 다른 선으로 분할되고, 또 그 선들은 다시 4개의 선들로 끊임없이 분할되는 식입니다.
  iterate(before) {
    let now = [];    // 빈 배열 생성하기
    for(let i = 0; i < this.lines.length; i++) {
      let l = this.lines[i];
      // 5개의 코흐 p5.Vector 계산 (선 객체를 통해 계산)
      let a = l.kochA();
      let b = l.kochB();
      let c = l.kochC();
      let d = l.kochD();
      let e = l.kochE();
      // 모든 p5.Vector 사이에 선분을 만들고 추가하기
      now.push(new KochLine(a,b));
      now.push(new KochLine(b,c));
      now.push(new KochLine(c,d));
      now.push(new KochLine(d,e));
    }
    return now;
  }
}
