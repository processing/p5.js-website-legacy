/*
 * @name 웹잭과 아두이노 센서 데이터
 * @description 웹잭(WebJack)은 오디오를 사용하여 아두이노와
 * 다른 소스들로부터 데이터를 읽어오는 한 방식입니다.
 * 기본적으로, 아두이노를 오디오 모뎀으로 변환합니다.
 * 
 * https://github.com/publiclab/webjack
 * 
 * 주의: 이 예제를 로컬 프로젝트에서 실행하려면, index.html 파일에 WebJack과 p5-webjack 라이브러리를 다음과같이 추가해야 합니다:
 * <pre><code class="language-markup">&lt;script src="https://webjack.io/dist/webjack.js">&lt;/script></code></pre>
 * <pre><code class="language-markup">&lt;script src="https://jywarren.github.io/p5-webjack/lib.js">&lt;/script></code></pre>
 * 
 * 작동 예시: https://editor.p5js.org/jywarren/sketches/rkztwSt8M
 * 
 * 오디오 테스팅: https://www.youtube.com/watch?v=GtJW1Dlt3cg
 * 이 스케치를 아두이노로 불러오세요: 
 * https://create.arduino.cc/editor/jywarren/023158d8-be51-4c78-99ff-36c63126b554/preview
 * 아두이노가 pin 3 + ground로부터 오디오를 출력할 것입니다. 마이크나 오디오 케이블을 사용하세요.
 */

function setup() { 
  createCanvas(400, 400);
  noStroke();
  fill('#ff00aa22');
  receiveSensorData(handleData);
}

function handleData(data, connection) {

  console.log(data); // 값을 로그에 출력
  // data[0] = 첫번째 값, data[1] = 두번째 값 ...

  // 그려보세요! 참고: http://p5js.org/reference/
  background('#ddd');
  ellipse(100, 200, data[0]+10, data[0]+10);

  // connection.send('아두이노가 오디오리스닝 중이라면 아두이노로 데이터를 다시 전송하기');
}
