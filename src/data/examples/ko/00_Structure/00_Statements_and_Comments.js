/*
 * @name 주석과 명령문
 * @description 명령문은 프로그램을 구성하는 요소입니다. ";" (세미콜론) 기호는 명령문을 끝내는 데 사용됩니다. 세미콜론은 "명령문 * 종결자"라고 불립니다. 주석은 사람들이 프로그램을 더 잘 이해할 수 있도록 메모를 작성하는 데 사용됩니다. 주석은 두 개의 슬래시("//")로 시작합니다. (ported from https://processing.org/examples/statementscomments.html)
 */
// createCanvas 함수는 창을 만들 크기를 
// 컴퓨터에 알려주는 명령문입니다.
// 각 함수에는 0개 이상의 매개변수가 있습니다.
// 매개변수는 함수에 전달되는 데이터이며
// 컴퓨터에 수행할 작업을 알려주는 값으로 사용됩니다.
function setup() {
   createCanvas(710, 400);
}

// background 함수는 디스플레이 창의 배경을 만들 컬러 색상(또는 흑백 색상값)을
// 컴퓨터에게 알려주는 명령문입니다.
function draw() {
   background(204, 153, 0);
}

