/*
 * @name 万花筒
 * @description 万花筒是一个光学仪器，具有两个或多个互相倾斜的反射面。
 * 此范例尝试模仿万花筒的效果。
 * 通过 symmetry 变量设定反射的数量，并开始在屏幕上绘制。
 * 通过 slider 调整画笔的大小。
 * clearScreen()，顾名思义，清空屏幕。
 * save 按钮将你绘制的艺术品以 .jpg 的文件格式下载下来。
 */
// Symmetry 指反射的次数。更改此数值以改变反射的次数。 
let symmetry = 6;

let angle = 360 / symmetry;
let saveButton, clearButton, mouseButton, keyboardButton;
let slider;

function setup() {
  createCanvas(710, 710);
  angleMode(DEGREES);
  background(127);

  // 制作保存文件的按钮
  saveButton = createButton('save');
  saveButton.mousePressed(saveFile);

  // 制作清空屏幕的按钮
  clearButton = createButton('clear');
  clearButton.mousePressed(clearScreen);

  // 制作全屏按钮 
  fullscreenButton = createButton('Full Screen');
  fullscreenButton.mousePressed(screenFull);

  // 设置 slider 以改变笔刷的粗细 
  brushSizeSlider = createButton('Brush Size Slider');
  sizeSlider = createSlider(1, 32, 4, 0.1);
}

// 保存文件函数
function saveFile() {
  save('design.jpg');
}

// 清空屏幕函数 
function clearScreen() {
  background(127);
}

// 全屏函数 
function screenFull() {
  let fs = fullscreen();
  fullscreen(!fs);
}

function draw() {
  translate(width / 2, height / 2);

  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    let mx = mouseX - width / 2;
    let my = mouseY - height / 2;
    let pmx = pmouseX - width / 2;
    let pmy = pmouseY - height / 2;

    if (mouseIsPressed) {
      for (let i = 0; i < symmetry; i++) {
        rotate(angle);
        let sw = sizeSlider.value();
        strokeWeight(sw);
        line(mx, my, pmx, pmy);
        push();
        scale(1, -1);
        line(mx, my, pmx, pmy);
        pop();
      }
    }
  }
}
