/*
 * @name 스테이트멘트와 코멘트
 * @description 스테이트멘트는 프로그램을 형성하는 작은 단위의 문장입니다. 스테이트멘트의 끝은 ";" (세미콜론)를 사용합니다.
 * 이 것을 "스테이트멘트 종결 기호" ("statement  * terminator")이라고 합니다. 반면에 코멘트는
 * 더욱 편리한 이해를 위해 사용하는 일종의 메모입니다. 코멘트는 두 개의 슬래시 ("//")로 시작합니다.
 * (https://processing.org/examples/statementscomments.html에서 옮김)
 */

// createCanvas 함수는 컴퓨터에게 만들 윈도의 크기를 지정하는 함수 스테이트멘트입니다.
// 함수 스테이트멘트는 0개 이상의 인자 (parameter)가 있읍니다.
// 인자들는 함수에 사용되는 데이터며, 인자들의 값으로 컴퓨터의 행동을 지정합니다.

function setup() {
   createCanvas(710, 400);
}

// background 함수는 컴퓨터에게 만들 위토의 배경색 (또는 회색도)를
// 지정하는 함수 스테이트멘트입니다.
function draw() {
   background(204, 153, 0);
}

