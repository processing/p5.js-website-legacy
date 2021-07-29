/*
  * @name माउस प्रेस
  * @description माउस को शेप में लाने के लिए मूव करें।
  * रंग बदलने के लिए माउस बटन दबाएं।
  */
function setup() {
  createCanvas(720, 400);
  background(230);
  strokeWeight(2);
}

function draw() {
  if (mouseIsPressed) {
    stroke(255);
  } else {
    stroke(237, 34, 93);
  }
  line(mouseX - 66, mouseY, mouseX + 66, mouseY);
  line(mouseX, mouseY - 66, mouseX, mouseY + 66);
}
