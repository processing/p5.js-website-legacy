/*
  * @name रंग चर
  * @description (अलबर्स को श्रद्धांजलि।) यह उदाहरण रंगों के लिए चर बनाता है
  * जिसे कार्यक्रम में एक संख्या के बजाय एक नाम से संदर्भित किया जा सकता है।
  */
function setup() {
  createCanvas(710, 400);
  noStroke();
  background(51, 0, 0);

  let inside = color(204, 102, 0);
  let middle = color(204, 153, 0);
  let outside = color(153, 51, 0);

   // ये बयान ऊपर दिए गए बयानों के बराबर हैं।
   // प्रोग्रामर अपने पसंदीदा प्रारूप का उपयोग कर सकते हैं।
   // अंदर जाने दें = रंग ('# CC6600');
   // चलो मध्य = रंग ('# CC9900');
   // बाहर जाने दें = रंग ('#993300');
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
