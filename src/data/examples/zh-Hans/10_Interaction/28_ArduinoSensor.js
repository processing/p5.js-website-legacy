/*
 * @name 通过 WebJack 读取 Arduino 传感器数据
 * @description WebJack 是使用音频从 Arduino（和其他来源）
 * 读取数据的方式 -- 它基本上将 Arduino 变成了音频调制解调器。
 *
 * https://github.com/publiclab/webjack
 *
 * 注： WebJack 和 p5-webjack 库必须以以下方式添加到 index.html：
 * <pre><code class="language-markup">&lt;script src="https://webjack.io/dist/webjack.js">&lt;/script></code></pre>
 * <pre><code class="language-markup">&lt;script src="https://jywarren.github.io/p5-webjack/lib.js">&lt;/script></code></pre>
 *
 * 实例: https://editor.p5js.org/jywarren/sketches/rkztwSt8M
 *
 * 测试音频: https://www.youtube.com/watch?v=GtJW1Dlt3cg
 * 将此草图加载到 Arduino:
 * https://create.arduino.cc/editor/jywarren/023158d8-be51-4c78-99ff-36c63126b554/preview
 * 从引脚 3 + 地引脚（GND）输出音频。请使用使用麦克风或音频线。
 */

function setup() {
  createCanvas(400, 400);
  noStroke();
  fill('#ff00aa22');
  receiveSensorData(handleData);
}

function handleData(data) {
  console.log(data); // 打出数据
  // data[0] 是第一个值, data[1] 是第二个, 以此类推.

  // 绘制！ 参考 http://p5js.org/reference/
  background('#ddd');
  ellipse(100, 200, data[0] + 10, data[0] + 10);
}
