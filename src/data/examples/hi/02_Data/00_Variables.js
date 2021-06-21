/*
  * @name चर
  * @description वेरिएबल्स का उपयोग वैल्यू स्टोर करने के लिए किया जाता है। इस उदाहरण में, बदलें
  * रचना को प्रभावित करने के लिए चर के मान।
  */
function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(153);
  strokeWeight(4);
  strokeCap(SQUARE);

  let a = 50;
  let b = 120;
  let c = 180;

  line(a, b, a + c, b);
  line(a, b + 10, a + c, b + 10);
  line(a, b + 20, a + c, b + 20);
  line(a, b + 30, a + c, b + 30);

  a = a + c;
  b = height - b;

  line(a, b, a + c, b);
  line(a, b + 10, a + c, b + 10);
  line(a, b + 20, a + c, b + 20);
  line(a, b + 30, a + c, b + 30);

  a = a + c;
  b = height - b;

  line(a, b, a + c, b);
  line(a, b + 10, a + c, b + 10);
  line(a, b + 20, a + c, b + 20);
  line(a, b + 30, a + c, b + 30);
}
