/*
  * @name इनपुट और बटन
  * @description आपको शामिल करना होगा
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।<br><br>
  * इनपुट टेक्स्ट और यह देखने के लिए बटन पर क्लिक करें कि यह कैनवास को प्रभावित करता है।
  */
let input, button, greeting;

function setup() {
  // कैनवास बनाएं
  createCanvas(710, 400);

  input = createInput();
  input.position(20, 65);

  button = createButton('submit');
  button.position(input.x + input.width, 65);
  button.mousePressed(greet);

  greeting = createElement('h2', 'what is your name?');
  greeting.position(20, 5);

  textAlign(CENTER);
  textSize(50);
}

function greet() {
  const name = input.value();
  greeting.html('hello ' + name + '!');
  input.value('');

  for (let i = 0; i < 200; i++) {
    push();
    fill(random(255), 255, 255);
    translate(random(width), random(height));
    rotate(random(2 * PI));
    text(name, 0, 0);
    pop();
  }
}
