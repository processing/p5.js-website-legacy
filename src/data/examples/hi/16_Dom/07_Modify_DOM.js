/*
  * @name डोम को संशोधित करना
  * @frame 710,300
  * @description <p>DOM एलिमेंट बनाएं और हर बार उनके गुणों को संशोधित करें
  * draw() कहा जाता है। आपको शामिल करने की आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।</p>
  */
let dancingWords = [];

class DanceSpan {
  constructor(element, x, y) {
    element.position(x, y);
    this.element = element;
    this.x = x;
    this.y = y;
  }

  brownian() {
    this.x += random(-6, 6);
    this.y += random(-6, 6);
    this.element.position(this.x, this.y);
  }
}

function setup() {
   // यह पैराग्राफ कोड के मुख्य ब्लॉक से अलग बनाया गया है।
   // यह किसी तत्व के निर्माण को उसके . से अलग करना है
   // चयन। चयनित तत्वों को बनाने की आवश्यकता नहीं है
   // p5js, वे सिर्फ सादा HTML हो सकते हैं।
  createP(
    'I learn in this Letter, that Don Peter of Aragon, ' +
      ' comes this night to Messina'
  ).addClass('text').hide();

  // यह लाइन अभी बनाए गए पैराग्राफ को पकड़ लेती है, लेकिन यह but
  // HTML में वर्ग 'पाठ' के साथ किसी अन्य तत्व को भी पकड़ें
  // पृष्ठ।
  const texts = selectAll('.text');

  for (let i = 0; i < texts.length; i++) {
    const paragraph = texts[i].html();
    const words = paragraph.split(' ');
    for (let j = 0; j < words.length; j++) {
      const spannedWord = createSpan(words[j]);
      const dw = new DanceSpan(spannedWord, random(600), random(200));
      dancingWords.push(dw);
    }
  }
}

function draw() {
  for (let i = 0; i < dancingWords.length; i++) {
    dancingWords[i].brownian();
  }
}
