/*
 * @name 数组
 * @description 数组是数据列表。数组中的每条数据由表示其在数组中的位置的索引号标识。
 * 数组基于零，这意味着数组中的第一个元素是[0]，第二个元素是[1]，依此类推。 
 * 在此示例中，一个名为 “coswave” 的数组被创建并使用余弦值填充。此数据在屏幕上以三种不同的方式显示。 
 */
var coswave = [];

function setup() {

  createCanvas(720, 360);
  for (var i = 0; i < width; i++) {
    var amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  background(255);
  noLoop();
}

function draw() {
  var y1 = 0;
  var y2 = height/3;
  for (var i = 0; i < width; i+=3) {
    stroke(coswave[i]*255);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = y1 + y1;
  for (var i = 0; i < width; i+=3) {
    stroke(coswave[i]*255 / 4);
    line(i, y1, i, y2);
  }
  
  y1 = y2;
  y2 = height;
  for (var i = 0; i < width; i+=3) {
    stroke(255 - coswave[i]*255);
    line(i, y1, i, y2);
  }
}
