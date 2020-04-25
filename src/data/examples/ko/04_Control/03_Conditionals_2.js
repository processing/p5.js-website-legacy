/*
 * @name 조건문 2
 * @description 조건문 1 예제에 "else"라는 키워드를 더해 조건문의 문법을 확장해봅시다.
 * "else"를 사용하면 연속하여 2개 이상의 질문을 던질 수 있습니다.
 * 이 때, 각각의 질문은 서로 다른 행위를 요청할 수 있습니다.
 */
function setup() {
  createCanvas(720, 360);
  background(0);

  for (let i = 2; i < width - 2; i += 4) {
    // i가 20으로 나누어 떨어질 경우
    if (i % 20 === 0) {
      stroke(255);
      line(i, 80, i, height / 2);
      // i가 10으로 나누어 떨어질 경우
    } else if (i % 10 === 0) {
      stroke(153);
      line(i, 20, i, 180);
      // 위의 두 조건 모두 충족하지 않을 경우
      // 이 선을 그린다.
    } else {
      stroke(102);
      line(i, height / 2, i, height - 20);
    }
  }
}
