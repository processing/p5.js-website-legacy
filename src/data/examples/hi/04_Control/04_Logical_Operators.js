/*
  * @name लॉजिकल ऑपरेटर्स
  * @description AND (&&) और OR (||) के लिए तार्किक ऑपरेटरों का उपयोग किया जाता है
  * सरल संबंधपरक कथनों को अधिक जटिल अभिव्यक्तियों में संयोजित करें।
  * NOT (!) ऑपरेटर का उपयोग बूलियन स्टेटमेंट को नकारने के लिए किया जाता है।
  */
let test = false;

function setup() {
  createCanvas(720, 360);
  background(126);

  for (let i = 5; i <= height; i += 5) {
    // तार्किक और
    stroke(0);
    if (i > 35 && i < 100) {
      line(width / 4, i, width / 2, i);
      test = false;
    }

    // तार्किक OR
    stroke(76);
    if (i <= 35 || i >= 100) {
      line(width / 2, i, width, i);
      test = true;
    }

    // परीक्षण करें कि क्या बूलियन मान "सत्य" है
    // अभिव्यक्ति "अगर (परीक्षण)" "अगर (परीक्षण == सत्य)" के बराबर है
    if (test) {
      stroke(0);
      point(width / 3, i);
    }

    // परीक्षण करें कि क्या बूलियन मान "गलत" है
    // अभिव्यक्ति "if(!test)" बराबर है "if(test == false)"
    if (!test) {
      stroke(255);
      point(width / 4, i);
    }
  }
}
