/*
 * @name 物件 2
 * @description 转自 hbarragan 的范例。在图像上移动光标以更改几何图形的速度和位置。
 * MRect 类定义了一组线。
 */

let r1, r2, r3, r4;

function setup() {
  createCanvas(710, 400);
  fill(255, 204);
  noStroke();
  r1 = new MRect(1, 134.0, 0.532, 0.1 * height, 10.0, 60.0);
  r2 = new MRect(2, 44.0, 0.166, 0.3 * height, 5.0, 50.0);
  r3 = new MRect(2, 58.0, 0.332, 0.4 * height, 10.0, 35.0);
  r4 = new MRect(1, 120.0, 0.0498, 0.9 * height, 15.0, 60.0);
}

function draw() {
  background(0);

  r1.display();
  r2.display();
  r3.display();
  r4.display();

  r1.move(mouseX - width / 2, mouseY + height * 0.1, 30);
  r2.move((mouseX + width * 0.05) % width, mouseY + height * 0.025, 20);
  r3.move(mouseX / 4, mouseY - height * 0.025, 40);
  r4.move(mouseX - width / 2, height - mouseY, 50);
}

class MRect {
  constructor(iw, ixp, ih, iyp, id, it) {
    this.w = iw; // 单线条宽度
    this.xpos = ixp; // rect x 值
    this.h = ih; // rect 高度
    this.ypos = iyp; // rect y 值
    this.d = id; // 单线条间距
    this.t = it; // 单线条数量
  }

  move(posX, posY, damping) {
    let dif = this.ypos - posY;
    if (abs(dif) > 1) {
      this.ypos -= dif / damping;
    }
    dif = this.xpos - posX;
    if (abs(dif) > 1) {
      this.xpos -= dif / damping;
    }
  }

  display() {
    for (let i = 0; i < this.t; i++) {
      rect(
        this.xpos + i * (this.d + this.w),
        this.ypos,
        this.w,
        height * this.h
      );
    }
  }
}
