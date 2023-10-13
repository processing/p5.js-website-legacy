/*
 * @name 걷는발 착시효과
 * @description 걷는발 착시효과(Stepping feet illusion)는 저명한
 * 심리학 실험입니다.
 * 두 사각형은 동일한 속도로 움직이나,
 * 마치 다른 속도로 움직이는 것처럼 보입니다.
 * 캔버스를 마우스로 클릭해 두 사각형이 동일한 속도로
 * 이동하는지 확인해보세요.
 * 기여: 사가 아로라(Sagar Arora)
 */

// 이 클래스는 전체 구조와 사각형의 움직임을
// 표현합니다.
class Brick{
  constructor(bc, y){
    this.brickColor = bc;
    this.yPos = y;
    this.xPos = 0;
  }

  // 이 함수로 사각형 생성하기
  createBrick(){
    fill(this.brickColor);
    rect(this.xPos, this.yPos, 100, 50);
  }

  // 이 함수로 사각형의 움직임을
  // 1로 설정하기
  setSpeed(){
    this.xSpeed = 1;
  }

  // 이 함수로 사각형을 움직이기
  moveBrick(){
    this.xPos+=this.xSpeed;
    if(this.xPos+100 >= width || this.xPos <= 0){
      this.xSpeed*=-1;
    }
  }
}

function setup() {
  createCanvas(720, 400);
  createP("Keep the mouse clicked").style('color','#ffffff');
  createP("to check whether the bricks").style('color','#ffffff');
  createP("are moving at same speed or not").style('color','#ffffff');
}

// 두 개의 사각형을 각각
// 흰색과 검정색으로 지정
let brick1 = new Brick("white",100);
let brick2 = new Brick("black",250);

//
brick1.setSpeed();
brick2.setSpeed();

function draw () {
  background(0);
  if(mouseIsPressed){
    background(50);
  }
  brick1.createBrick();
  brick1.moveBrick();
  if(!mouseIsPressed){
    createBars();
  }
  brick2.createBrick();
  brick2.moveBrick();
}

// 이 함수로 화면에
// 검정색 및 흰색 막대기들을 생성하기
function createBars() {
  let len = 12;
  for(let i = 0;i<width/len;i++){
    fill("white");
    if(i%2 == 0)
    rect(i*len,height,len,-height);
  }
}