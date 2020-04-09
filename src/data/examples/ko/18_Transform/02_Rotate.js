/*
<<<<<<< HEAD
 * @name 회전(Rotate)
 * @description Z축을 기준으로 사각형 회전시킵니다.
 * 원하는 결과를 얻기 위해, 0부터 PI*2(즉, TWO_PI, 약 6.28)에 해당하는,
 * rotate 함수 속 각도 매개 변수를 보냅니다.
 * 각도를 도(0-360) 단위로 표현하고 싶다면, radians() 메소드를 통해 변환하면 됩니다.
 * 예: scale(radians(90))은 선언문 scale(PI/2)과 동일합니다.
 * 이 예제에서, 모든 짝수 초마다 jitter(떨림)가 회전에 더해집니다.
 * 홀수 초에는 마지막 jitter값으로 결정된 속도에 따라
 * 시계 방향 또는 반시계 방향으로 회전합니다.
=======
 * @name Rotate
 * @description Rotating a square around the Z axis.
 * To get the results you expect, send the rotate function angle
 * parameters that are values between 0 and PI*2 (TWO_PI which is
 * roughly 6.28). If you prefer to think about angles as degrees
 * (0-360), you can use the radians() method to convert your values.
 * For example: scale(radians(90)) is identical to the statement
 * scale(PI/2). In this example, every even numbered second a jitter
 * is added to the rotation. During odd seconds rotation moves CW and
 * CCW at the speed determined by the last jitter value.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let angle = 0.0;
let jitter = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255);
<<<<<<< HEAD
  //중심으로부터 사각형을 그리고,
  //사각형이 중심을 기준으로 회전하도록 만들기
=======
  //Draw the rectangle from the center and it will also be the
  //rotate around that center
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  rectMode(CENTER);
}

function draw() {
  background(51);

<<<<<<< HEAD
  // 짝수 초(0, 2, 4, 6...)동안 회전에
  // jitter(떨림) 더하기
  if (second() % 2 === 0) {
    jitter = random(-0.1, 0.1);
  }
  // 가장 마지막 jitter값을 사용해 각도값 증가시키기
  angle = angle + jitter;
  // 떨림이 없는 경우, 코싸인을 사용해 부드러운 시계 방향 및 반시계 방향 모션 받기
  let c = cos(angle);
  //도형을 캔버스의 중앙으로 이동시키기
  translate(width / 2, height / 2);
  //최종 회전 적용하기
=======
  // during even-numbered seconds (0, 2, 4, 6...) add jitter to
  // the rotation
  if (second() % 2 === 0) {
    jitter = random(-0.1, 0.1);
  }
  //increase the angle value using the most recent jitter value
  angle = angle + jitter;
  //use cosine to get a smooth CW and CCW motion when not jittering
  let c = cos(angle);
  //move the shape to the center of the canvas
  translate(width / 2, height / 2);
  //apply the final rotation
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  rotate(c);
  rect(0, 0, 180, 180);
}
