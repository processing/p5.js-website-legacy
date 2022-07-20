/* 
 * @name 단위원과 파이 차트
 * @frame 400,400
 * @description 해리스 교수 (<a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a>)의 기고 예시, '삼각함수 컬러 휠 만드는 법과 인구 연령 데이터로 파이차트 그리기'
   (How to create a trig color wheel and a visualization of a population age data as a pie chart).
   <br/>
   켄바스 설정, 삼각함수 컬러 휠, 휠 조각 그리기와 파이차트를 위한 함수르 만듭니다. 컬러 휠 조각들의 크기와
   색상범위 (color range)를 정합니다. 파이차트는 값에 따라 색깔로 나누어지는 반면, 삼각함수 컬러 휠은 조각의 수가
   고정되어있고 색상 범위로 나누어집니다.
*/

function setup() {
  createCanvas(400, 400);
  colorMode(HSB);
  angleMode(DEGREES);

  //색깔 컬러 휠 중점을 위한 
  let x = width / 2;
  let y = height / 2 + 100;
  colorWheel(x, y, 100); //slide 11

  noStroke();
  pieChartPop(200, 100); //slide 12
}

//**** slide 12 pie chart trig demo 
function pieChartPop(x, y) {
  let [total, child, young, adult, senior, elder] = [577, 103, 69,
    122, 170, 113
  ];
  let startValue = 0;
  let range = 0;

  //child slice
  range = child / total;
  drawSlice("blue", x, y, 200, startValue, startValue + range);
  startValue += range;
  //young slice
  range = young / total;
  drawSlice("orange", x, y, 200, startValue, startValue + range);
  startValue += range;
  //adult slice
  range = adult / total;
  drawSlice("green", x, y, 200, startValue, startValue + range);
  startValue += range;
  //senior slice
  range = senior / total;
  drawSlice("tan", x, y, 200, startValue, startValue + range);
  startValue += range;
  //elder slice
  range = elder / total;
  drawSlice("pink", x, y, 200, startValue, startValue + range);
  startValue += range;

}

/**
 * drawSlice - draw colored arc based on angle percentages. slide 13
 * Adjust angles so that 0% starts at top (actually -90).
 * @param {color} fColor - fill color
 * @param {number} x - center x
 * @param {number} y - center y
 * @param {number} d - diameter
 * @param {float} percent1 - starting percentage
 * @param {float} percent2 - ending percentage
 */
function drawSlice(fColor, x, y, d, percent1, percent2) {
  fill(fColor);
  arc(x, y, d, d, -90 + percent1 * 360, -90 + percent2 * 360);
}

//**** slide 11 trig demo 
function colorWheel(x, y, rad) {
  strokeWeight(10);
  strokeCap(SQUARE);

  //Iterate 360 degrees of lines, +10deg per turn
  for (let a = 0; a < 360; a += 10) {
    stroke(a, 150, 200); //hue based on a
    //radius is 100, angle is a degrees
    line(x, y, x + rad * cos(a),
      y + rad * sin(a));
  }
}
