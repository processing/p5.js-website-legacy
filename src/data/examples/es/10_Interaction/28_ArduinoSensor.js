/*
 * @name Datos de un sensor Arduino vía WebJack
 * @description WebJack es una forma de leer datos de un Arduino (y otras fuentes)
 * usando audio... básicamente convierte tu Arduino en un modem de audio.
 *
 * https://github.com/publiclab/webjack
 *
 * Importante: Las bibliotecas WebJack y p5-webjack deben ser agregadas a tu index.html de la siguiente manera:
 * <pre><code class="language-markup">&lt;script src="https://webjack.io/dist/webjack.js">&lt;/script></code></pre>
 * <pre><code class="language-markup">&lt;script src="https://jywarren.github.io/p5-webjack/lib.js">&lt;/script></code></pre>
 *
 * Ejemplo práctico: https://editor.p5js.org/jywarren/sketches/rkztwSt8M
 *
 * Audio de prueba https://www.youtube.com/watch?v=GtJW1Dlt3cg
 * Carga este lienzo en un Arduino:
 * https://create.arduino.cc/editor/jywarren/023158d8-be51-4c78-99ff-36c63126b554/preview
 * Arduino emitirá el audio desde el pin 3 + tierra. Usa el micrófono o un cable de audio.
 */

function setup() {
  createCanvas(400, 400);
  noStroke();
  fill('#ff00aa22');
  receiveSensorData(handleData);
}

function handleData(data) {

  console.log(data); // emitir los valores a registrar
  // data[0] es el primer valor, data[1] el segundo, etc.

  // Dibuja! Navega http://p5js.org/reference/
  background('#ddd');
  ellipse(100, 200, data[0]+10, data[0]+10);

}
