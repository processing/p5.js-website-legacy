/*
 * @name 버블 정렬
 * @description 전체 정렬 과정을 시뮬레이션하면서,
 * 무작위로 분포된 막대들을 그 높이에 따라 오름차순으로 정렬합니다.
 * 코딩 트레인(Coding Train)의 코딩 챌린지(Coding Challenge)를 참조하였습니다.
 */

let values = [];
let i = 0;
let j = 0;

// setup() 함수 속 명령문들은
// 프로그램 시작시 한 번 실행됩니다.
// 배열은 setup()함수를 통해 임의의 값들로 채워집니다.
function setup() {
  createCanvas(720, 400);
  for(let i = 0;i<width/8;i++){
    values.push(random(height));
  }
}

// draw() 함수 속 명령문들은 
// 프로그램이 멈출 때까지 실행됩니다.
// 각 명령문은 순차적으로 실행되며,
// 마지막 명령문 실행한 후에는 첫 명령문으로 돌아가 실행합니다.
function draw() {
  background(220);
  bubbleSort();
  simulateSorting();
}

// bubbleSort() 함수는 매 프레임마다
// 8개의 배열 요소를 가져옵니다.
// 이 함수가 사용하는 알고리즘은 버블 정렬입니다.
function bubbleSort() {
  for(let k = 0;k<8;k++){
    if(i<values.length){
      let temp = values[j];
      if(values[j] > values[j+1]){
        values[j] = values[j+1];
        values[j+1] = temp;
      }
      j++;
      
      if(j>=values.length-i-1){
        j = 0;
        i++;
      }
    }
    else{
      noLoop();
    }
  }
}

// simulateSorting() 함수는 버블 정렬 알고리즘에
// 애니메이션을 적용합니다.
// 이 함수는 배열의 값을 사각형 길이로 치환해
// 사각형을 그립니다.
function simulateSorting(){
  for(let i = 0;i<values.length;i++){
    stroke(100, 143, 143);
     fill(50);
     rect(i*8 , height, 8, -values[i],20);
   }
}