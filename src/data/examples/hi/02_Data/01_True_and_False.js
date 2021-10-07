/*
  * @name सही और गलत
  * @description एक बूलियन वैरिएबल के केवल दो संभावित मान हैं: सही या गलत।
  * प्रवाह को निर्धारित करने के लिए नियंत्रण कथनों के साथ बूलियन का उपयोग करना आम है
  * एक कार्यक्रम का। इस उदाहरण में, जब बूलियन मान "बी" सत्य है, लंबवत
  * रेखाएँ खींची जाती हैं और जब बूलियन मान "बी" गलत होता है, क्षैतिज
  *रेखाएँ खींची जाती हैं।
  */
function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);

  let b = false;
  let d = 20;
  let middle = width / 2;

  for (let i = d; i <= width; i += d) {
    b = i < middle;

    if (b === true) {
      // ऊर्ध्वाधर रेखा
      line(i, d, i, height - d);
    }

    if (b === false) {
      // क्षैतिज रेखा
      line(middle, i - middle + d, width - d, i - middle + d);
    }
  }
}
