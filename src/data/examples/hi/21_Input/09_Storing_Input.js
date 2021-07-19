/*
  * @name भंडारण इनपुट
  * @description माउस को स्क्रीन पर ले जाएँ
  * मंडलियों की स्थिति बदलें। पदों
  * माउस को एक ऐरे में रिकॉर्ड किया जाता है और खेला जाता है
  * हर फ्रेम वापस। प्रत्येक फ्रेम के बीच, नवीनतम
  * मान प्रत्येक सरणी के अंत में जोड़ा जाता है और
  * सबसे पुराना मान हटा दिया गया है।
  */
let num = 60;
let mx = [];
let my = [];

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255, 153);
  for (let i = 0; i < num; i++) {
    mx.push(i);
    my.push(i);
  }
}

function draw() {
  background(237, 34, 93);

   // प्रत्येक फ्रेम पर एक अलग प्रविष्टि का उपयोग करके, सरणी के माध्यम से साइकिल चलाएं।
   // इस तरह से मोडुलो (%) का उपयोग करना सभी मूल्यों को खत्म करने की तुलना में तेज़ है।
  let which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;

  for (let i = 0; i < num; i++) {
    // कौन सा+1 सबसे छोटा है (सरणी में सबसे पुराना)
    let index = (which + 1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}
