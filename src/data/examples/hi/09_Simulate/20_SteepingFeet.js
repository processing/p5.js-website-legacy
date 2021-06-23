/*
  * @name स्टेपिंग फीट इल्यूजन
  * @description कदम बढ़ाना भ्रम एक बहुत प्रसिद्ध मनोवैज्ञानिक प्रयोग है
  * दोनों ईंटें अलग-अलग गति से चलती दिखाई देंगी
  *भले ही वे एक ही गति से आगे बढ़ रहे हों।
  * यह पुष्टि करने के लिए कैनवास के अंदर माउस क्लिक करें
  *वे उसी गति से आगे बढ़ रहे हैं।
  * सागर अरोड़ा द्वारा योगदान दिया गया।
  */

// यह वर्ग संरचना का वर्णन करता है
// और ईंट की चाल
class Brick{
  constructor(bc, y){
    this.brickColor = bc;
    this.yPos = y;
    this.xPos = 0;
  }

  // यह फ़ंक्शन ईंट बनाता है
  createBrick(){
    fill(this.brickColor);
    rect(this.xPos, this.yPos, 100, 50);
  }

  // यह फ़ंक्शन गति निर्धारित करता है
   // ईंट की गति 1 . तक
  setSpeed(){
    this.xSpeed = 1;
  }

  // यह फ़ंक्शन ईंटों को गति में सेट करता है
  moveBrick(){
    this.xPos+=this.xSpeed;
    if(this.xPos+100 >= width || this.xPos <= 0){
      this.xSpeed*=-1;
    }
  }
}

function setup() {
  createCanvas(720, 400);
  createP("Keep the mouse clicked").style('color','#ffffff');
  createP("to check whether the bricks").style('color','#ffffff');
  createP("are moving at same speed or not").style('color','#ffffff');
}

// की दो ईंटें बनाना
// रंग सफेद और काला
let brick1 = new Brick("white",100);
let brick2 = new Brick("black",250);

//
brick1.setSpeed();
brick2.setSpeed();

function draw () {
  background(0);
  if(mouseIsPressed){
    background(50);
  }
  brick1.createBrick();
  brick1.moveBrick();
  if(!mouseIsPressed){
    createBars();
  }
  brick2.createBrick();
  brick2.moveBrick();
}

// यह फ़ंक्शन काला बनाता है और
// स्क्रीन पर सफेद पट्टियां
function createBars() {
  let len = 12;
  for(let i = 0;i<width/len;i++){
    fill("white");
    if(i%2 == 0)
    rect(i*len,height,len,-height);
  }
}