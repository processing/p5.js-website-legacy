/*
 * @name 펜로즈 타일
 * @frame 710,400
 * @description 이 예제는 데이비드 블리츠(David Blitz)가 processing.org/examples의 "펜로즈 타일(Penrose Tile)" 예제를 p5.js로 옮겨온 것입니다.
 */

let ds;

function setup() {
  createCanvas(710, 400);
  ds = new PenroseLSystem();
  //다음의 줄과 함께 놀아보세요!
  ds.simulate(5);
}

function draw() {
  background(0);
  ds.render();
}

function PenroseLSystem() {
    this.steps = 0;

   //아래는 펜로즈 마름모 L-시스템의 공리와 규칙들입니다.
   //레퍼런스가 있다면 좋겠지만, 좋은 사례를 찾지 못했습니다.
    this.axiom = "[X]++[X]++[X]++[X]++[X]";
    this.ruleW = "YF++ZF----XF[-YF----WF]++";
    this.ruleX = "+YF--ZF[---WF--XF]+";
    this.ruleY = "-WF++XF[+++YF++ZF]-";
    this.ruleZ = "--YF++++WF[+ZF++++XF]--XF";

    //아래의 두 줄과 함께 놀아보세요!
    this.startLength = 460.0;
    this.theta = TWO_PI / 10.0; //36도, TWO_PI / 6.0도을 넣어보세요, ...
    this.reset();
}

PenroseLSystem.prototype.simulate = function (gen) {
  while (this.getAge() < gen) {
    this.iterate(this.production);
  }
}

PenroseLSystem.prototype.reset = function () {
    this.production = this.axiom;
    this.drawLength = this.startLength;
    this.generations = 0;
  }

PenroseLSystem.prototype.getAge = function () {
    return this.generations;
  }

//대체 규칙을 적용하여, 문자열의 새로운 반복 생성
PenroseLSystem.prototype.iterate = function() {
    let newProduction = "";

    for(let i=0; i < this.production.length; ++i) {
      let step = this.production.charAt(i);
      // 현재 문자가 'W'이면,
      // 이 현재 문자를 규칙에 맞게 대체합니다.
      if (step == 'W') {
        newProduction = newProduction + this.ruleW;
      }
      else if (step == 'X') {
        newProduction = newProduction + this.ruleX;
      }
      else if (step == 'Y') {
        newProduction = newProduction + this.ruleY;
      }
      else if (step == 'Z') {
        newProduction = newProduction + this.ruleZ;
      }
      else {
        // 모든 'F'를 drop 삭제하되, 
        // 여타 문자들(예. '+', '-', '[', ']')은 건들지 않는다.
        if (step != 'F') {
          newProduction = newProduction + step;
        }
      }
    }

    this.drawLength = this.drawLength * 0.5;
    this.generations++;
    this.production = newProduction;
}

//문자열을 거북이 그래픽으로 변환
PenroseLSystem.prototype.render = function () {
    translate(width / 2, height / 2);

    this.steps += 20;
    if(this.steps > this.production.length) {
      this.steps = this.production.length;
    }

    for(let i=0; i<this.steps; ++i) {
      let step = this.production.charAt(i);

      //'W', 'X', 'Y', 'Z' 기호들은 거북이 동작에 상응하지 않습니다.
      if( step == 'F') {
        stroke(255, 60);
        for(let j=0; j < this.repeats; j++) {
          line(0, 0, 0, -this.drawLength);
          noFill();
          translate(0, -this.drawLength);
        }
        this.repeats = 1;
      }
      else if (step == '+') {
        rotate(this.theta);
      }
      else if (step == '-') {
        rotate(-this.theta);
      }
      else if (step == '[') {
        push();
      }
      else if (step == ']') {
        pop();
      }
    }
  }


