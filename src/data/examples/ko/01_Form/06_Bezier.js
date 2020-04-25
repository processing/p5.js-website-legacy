/*
 * @name 베지어 곡선
 * @description bezier()함수의 처음 두 매개변수들은 각각 곡선의 시작점과 끝점을 지정합니다.
 * 중간의 인수들은 곡선의 모양을 조정하는 '조정점(control point)'들입니다.
 */
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noFill();
}

function draw() {
  background(0);
  for (let i = 0; i < 200; i += 20) {
    bezier(
      mouseX - i / 2.0,
      40 + i,
      410,
      20,
      440,
      300,
      240 - i / 16.0,
      300 + i / 8.0
    );
  }
}
