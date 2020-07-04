/*
 * @name 레이 캐스팅
 * @description 예제 원본: 조나단 왓슨(Jonathan Watson) 제작
 * <br><br>광선 투사(ray casting) 기능으로 3D 공간 속 마우스의 위치를 감지합니다.
 */
const objects = [];
let eyeZ;

function setup() {
  createCanvas(710, 400, WEBGL);

  eyeZ = height / 2 / tan((30 * PI) / 180); // 카메라가 원점에서 떨어진 기본 위치

  objects.push(new IntersectPlane(1, 0, 0, -100, 0, 0)); // 왼쪽 벽
  objects.push(new IntersectPlane(1, 0, 0, 100, 0, 0)); // 오른쪽 벽
  objects.push(new IntersectPlane(0, 1, 0, 0, -100, 0)); // 바닥
  objects.push(new IntersectPlane(0, 1, 0, 0, 100, 0)); // 천장
  objects.push(new IntersectPlane(0, 0, 1, 0, 0, 0)); // 뒷면 벽

  noStroke();
  ambientMaterial(250);
}

function draw() {
  background(0);

  // 조명들
  pointLight(255, 255, 255, 0, 0, 400);
  ambientLight(244, 122, 158);

  // 왼쪽 벽
  push();
  translate(-100, 0, 200);
  rotateY((90 * PI) / 180);
  plane(400, 200);
  pop();

  // 오른쪽 벽
  push();
  translate(100, 0, 200);
  rotateY((90 * PI) / 180);
  plane(400, 200);
  pop();

  // 바닥
  push();
  translate(0, 100, 200);
  rotateX((90 * PI) / 180);
  plane(200, 400);
  pop();

  // 천장
  push();
  translate(0, -100, 200);
  rotateX((90 * PI) / 180);
  plane(200, 400);
  pop();

  plane(200, 200); // 뒷면 벽

  const x = mouseX - width / 2;
  const y = mouseY - height / 2;

  const Q = createVector(0, 0, eyeZ); // 광선 위의 점과 카메라의 기본 위치
  const v = createVector(x, y, -eyeZ); // 광선의 방향 벡터

  let intersect; // 광선과 벽면의 교차점
  let closestLambda = eyeZ * 10; // 거리 그리기

  for (let x = 0; x < objects.length; x += 1) {
    let object = objects[x];
    let lambda = object.getLambda(Q, v); // 광선과 객체 간 교차점의  람다값

    if (lambda < closestLambda && lambda > 0) {
      // 광선과 객체의 교차점 위치 찾기
      intersect = p5.Vector.add(Q, p5.Vector.mult(v, lambda));
      closestLambda = lambda;
    }
  }

  // 커서
  push();
  translate(intersect);
  fill(237, 34, 93);
  sphere(10);
  pop();
}

// 무한대로 확장하는 벽면 생성을 위한 클래스
class IntersectPlane {
  constructor(n1, n2, n3, p1, p2, p3) {
    this.normal = createVector(n1, n2, n3); // 면의 기본 벡터
    this.point = createVector(p1, p2, p3); // 면 위의 점
    this.d = this.point.dot(this.normal);
  }

  getLambda(Q, v) {
    return (-this.d - this.normal.dot(Q)) / this.normal.dot(v);
  }
}
