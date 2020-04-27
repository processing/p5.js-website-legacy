/*
 * @name 망델브로 집합
 * @description 망델브로(Mandelbrot) 집합을 간단히 렌더링합니다.
 * 다니엘 쉬프만(Daniel Shiffman)의 프로세싱(Processing)을 위한 <a href="https://processing.org/examples/mandelbrot.html">망델브로 예제</a>에서 옮겨왔습니다.
 */

function setup() {
  createCanvas(710, 400);
  pixelDensity(1);
  noLoop();
}

function draw() {
  background(0);

  // 복잡한 평면 위에서 값의 범위를 설정
  // 설정된 범위에 따라 프랙탈을 줌인 또는 줌아웃할 수 있습니다.

  // 모든 것은 너비값에서 시작합니다. 더 크거나 적은 값을 시도해보세요.
  const w = 4;
  const h = (w * height) / width;

  // 너비와 높이의 음의 절반에서 시작
  const xmin = -w/2;
  const ymin = -h/2;

  // pixels[] 배열에 쓸 수 있는지 확인합니다.
  // 다른 드로잉을 하지 않으므로, 이 작업은 한번만 수행합니다.
  loadPixels();

  // 복잡한 평면 위의 각 점마다 반복할 수 있는 최대 횟수
  const maxiterations = 100;

  // x는 xmin에서 xmax로 이동
  const xmax = xmin + w;
  // y는 ymin에서 ymax로 이동
  const ymax = ymin + h;

  // 각 픽셀마다 x,y를 증가하는 양 계산
  const dx = (xmax - xmin) / (width);
  const dy = (ymax - ymin) / (height);

  // y 시작
  let y = ymin;
  for (let j = 0; j < height; j++) {
    // x 시작
    let x = xmin;
    for (let i = 0; i < width; i++) {

      // 이제, 우리가 z = z^2 + cm 를 반복 할 때 z가 무한대로 향하나요?
      let a = x;
      let b = y;
      let n = 0;
      while (n < maxiterations) {
        const aa = a * a;
        const bb = b * b;
        const twoab = 2.0 * a * b;
        a = aa - bb + x;
        b = twoab + y;
        // 이 유한한 세상에서의 무한대 개념은 간단합니다. 여기서는 그냥 16이라 설정하지요.
        if (dist(aa, bb, 0, 0) > 16) {
          break; 
        }
        n++;
      }

      // 무한대에 도달하기까지 걸리는 시간을 기준으로 각 픽셀에 색상을 지정합니다.
      // 도달하지 못할 경우, 검정색으로 지정합니다.
      const pix = (i+j*width)*4;
      const norm = map(n, 0, maxiterations, 0, 1);
      let bright = map(sqrt(norm), 0, 1, 0, 255);
      if (n == maxiterations) {
        bright = 0;
      } else {
        // 원한다면 여기서 좀 더 화려한 색상을 만들 수 있습니다.
        pixels[pix + 0] = bright;
        pixels[pix + 1] = bright;
        pixels[pix + 2] = bright;
        pixels[pix + 3] = 255;
      }
      x += dx;
    }
    y += dy;
  }
  updatePixels();
}
