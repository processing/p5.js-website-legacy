/*
 * @name 논리적 연산자
 * @description 논리 연산자인 AND (&&) 와 OR (||) 는 
 * 간단한 관계 선언문에 좀 더 복잡한 조건을 더할 때 쓰입니다.
 * NOT (!) 연산자는 불리언 선언문을 부정할 때 쓰입니다.
 */
let test = false;

function setup() {
  createCanvas(720, 360);
  background(126);

  for (let i = 5; i <= height; i += 5) {
    // 논리적 연산자 AND
    stroke(0);
    if (i > 35 && i < 100) {
      line(width / 4, i, width / 2, i);
      test = false;
    }

    // 논리적 연산자 OR
    stroke(76);
    if (i <= 35 || i >= 100) {
      line(width / 2, i, width, i);
      test = true;
    }

    // 불리언 값이 참(true)인지 여부를 테스트
    // "if(test)"이 "if(test == true)"와 동일한지 여부를 확인
    if (test) {
      stroke(0);
      point(width / 3, i);
    }

    // 불리언 값이 거짓(false)인지 여부를 테스트
    // "if(!test)"이 "if(test == false)"와 동일한지 여부를 확인
    if (!test) {
      stroke(255);
      point(width / 4, i);
    }
  }
}
