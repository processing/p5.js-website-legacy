/*
 * @name 颜色变量
 * @description (向 Albers 致敬。) 此范例为颜色们建立了变量。
 * 这样它们可以在程序中以名字指代，而非数字。
 */
function setup() {
  createCanvas(710, 400);
  noStroke();
  background(51, 0, 0);

  let inside = color(204, 102, 0);
  let middle = color(204, 153, 0);
  let outside = color(153, 51, 0);

  // 以下语句与上面的语句等效。
  // 程序员可以选择他们喜欢的格式。
  //let inside = color('#CC6600');
  //let middle = color('#CC9900');
  //let outside = color('#993300');

  push();
  translate(80, 80);
  fill(outside);
  rect(0, 0, 200, 200);
  fill(middle);
  rect(40, 60, 120, 120);
  fill(inside);
  rect(60, 90, 80, 80);
  pop();

  push();
  translate(360, 80);
  fill(inside);
  rect(0, 0, 200, 200);
  fill(outside);
  rect(40, 60, 120, 120);
  fill(middle);
  rect(60, 90, 80, 80);
  pop();
}
