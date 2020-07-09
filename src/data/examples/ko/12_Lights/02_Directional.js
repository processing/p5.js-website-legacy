/*
 * @name 디렉셔널 라이트
 * @frame 710,400
 * @description 마우스를 움직여 조명의 방향을 바꿔보세요.
 * 디렉셔널 라이트는 한 방향에서 비롯되며
 * 표면에 직각으로 닿을 때 강한 빛을,
 * 부드러운 각도로 닿았을 때 약한 빛을 보입니다. 
 * 디렉셔널 라이트는 표면에 닿으면 그 빛이 모든 방향으로 흩어집니다.
 */
const radius = 200;

function setup() {
  createCanvas(710, 400, WEBGL);
  noStroke();
  fill(200);
}

function draw() {
  noStroke();
  background(0);
  const dirY = (mouseY / height - 0.5) * 4;
  const dirX = (mouseX / width - 0.5) * 4;
  directionalLight(204, 204, 204, dirX, dirY, 1);
  translate(-1.5 * radius, 0, 0);
  sphere(radius);
  translate(3 * radius, 0, 0);
  sphere(radius);
}
