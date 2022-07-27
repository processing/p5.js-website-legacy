/*
  * @name बहुरूपदर्शक
  * @description एक बहुरूपदर्शक एक ऑप्टिकल उपकरण है जिसमें दो या दो से अधिक परावर्तक सतहें एक कोण में एक दूसरे की ओर झुकी होती हैं। यह उदाहरण एक बहुरूपदर्शक के व्यवहार को दोहराने का प्रयास करता है। समरूपता चर पर प्रतिबिंबों की संख्या निर्धारित करें और स्क्रीन पर चित्र बनाना शुरू करें। स्लाइडर की सहायता से ब्रश का आकार समायोजित करें। स्पष्ट स्क्रीन, जैसा कि यह कहती है, स्क्रीन को साफ़ करती है। सेव बटन आपके द्वारा बनाई गई कला की एक .jpg फ़ाइल डाउनलोड करेगा।
  */
// प्रतिबिंबों की संख्या के अनुरूप समरूपता। विभिन्न संख्या में परावर्तनों के लिए संख्या बदलें
let symmetry = 6;   

let angle = 360 / symmetry;
let saveButton, clearButton, mouseButton, keyboardButton;
let slider;

function setup() { 
  createCanvas(710, 710);
  angleMode(DEGREES);
  background(127);

  // फाइल के लिए सेव बटन बनाना
  saveButton = createButton('save');
  saveButton.mousePressed(saveFile);

  // स्पष्ट स्क्रीन बटन बनाना
  clearButton = createButton('clear');
  clearButton.mousePressed(clearScreen);

  // पूर्ण स्क्रीन के लिए बटन बनाना
  fullscreenButton = createButton('Full Screen');
  fullscreenButton.mousePressed(screenFull);

  // ब्रश की मोटाई के लिए स्लाइडर सेट करना
  brushSizeSlider = createButton('Brush Size Slider');
  sizeSlider = createSlider(1, 32, 4, 0.1);
}

// फ़ाइल फ़ंक्शन सहेजें
function saveFile() {
  save('design.jpg');
}

// साफ़ स्क्रीन फ़ंक्शन
function clearScreen() {
  background(127);
}

// फुल स्क्रीन फंक्शन
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
