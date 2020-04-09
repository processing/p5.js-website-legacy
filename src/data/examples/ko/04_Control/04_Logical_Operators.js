/*
<<<<<<< HEAD
 * @name 논리적 연산자
 * @description 논리 연산자인 AND (&&) 와 OR (||) 는 
 * 간단한 관계 선언문에 좀 더 복잡한 조건을 더할 때 쓰입니다.
 * NOT (!) 연산자는 불리언 선언문을 부정할 때 쓰입니다.
=======
 * @name Logical Operators
 * @description The logical operators for AND (&&) and OR (||) are used to
 * combine simple relational statements into more complex expressions.
 * The NOT (!) operator is used to negate a boolean statement.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let test = false;

function setup() {
  createCanvas(720, 360);
  background(126);

  for (let i = 5; i <= height; i += 5) {
<<<<<<< HEAD
    // 논리적 연산자 AND
=======
    // Logical AND
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    stroke(0);
    if (i > 35 && i < 100) {
      line(width / 4, i, width / 2, i);
      test = false;
    }

<<<<<<< HEAD
    // 논리적 연산자 OR
=======
    // Logical OR
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    stroke(76);
    if (i <= 35 || i >= 100) {
      line(width / 2, i, width, i);
      test = true;
    }

<<<<<<< HEAD
    // 불리언 값이 참(true)인지 여부를 테스트
    // "if(test)"이 "if(test == true)"와 동일한지 여부를 확인
=======
    // Testing if a boolean value is "true"
    // The expression "if(test)" is equivalent to "if(test == true)"
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    if (test) {
      stroke(0);
      point(width / 3, i);
    }

<<<<<<< HEAD
      
    // 불리언 값이 거짓(false)인지 여부를 테스트
    // "if(!test)"이 "if(test == false)"와 동일한지 여부를 확인
=======
    // Testing if a boolean value is "false"
    // The expression "if(!test)" is equivalent to "if(test == false)"
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    if (!test) {
      stroke(255);
      point(width / 4, i);
    }
  }
}
