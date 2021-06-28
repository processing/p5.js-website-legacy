/*
  * @name पैटर्न
  * @description सॉफ़्टवेयर टूल से चित्र बनाने के लिए कर्सर को छवि पर ले जाएं
  * जो माउस की गति के प्रति प्रतिक्रिया करता है।
  */
function setup() {
  createCanvas(710, 400);
  background(102);
}

function draw() {
   // variableEllipse() विधि को कॉल करें और इसे भेजें
   // वर्तमान माउस स्थिति के लिए पैरामीटर
   // और पिछली माउस स्थिति
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

// सरल विधि variableEllipse() विशेष रूप से बनाई गई थी
// इस कार्यक्रम के लिए। यह माउस की गति की गणना करता है
// और यदि माउस धीरे-धीरे आगे बढ़ रहा है तो एक छोटा दीर्घवृत्त खींचता है
// और यदि माउस तेजी से आगे बढ़ रहा है तो एक बड़ा दीर्घवृत्त खींचता है

function variableEllipse(x, y, px, py) {
  let speed = abs(x - px) + abs(y - py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}
