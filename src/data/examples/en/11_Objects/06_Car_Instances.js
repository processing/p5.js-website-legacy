/* 
 * @name Car Instances
 * @arialabel Vertical pale sage background with three rectangles--blue, yellow, and grey--moving across the screen horizontally at different speeds 
 * @frame 400,400
 * @description contributed by <a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a> <b>How </b>to create three instances of Car Class and
invoke class methods.<br/>
	A function is created for the canvas setup, and
3 car instances are initialized with different colors and canvas
positions. The speed of each car is set by passing value to the
instance’s start method. A second function calls class methods to
display and move the cars.
*/
class Car {
  /* Constructor expects parameters for
  fill color, x and y coordinates that
  will be used to initialize class properties.
  */
  constructor(cColor, x, y) {
    this.color = cColor;
    this.doors = 4;
    this.isConvertible = false;
    this.x = x;
    this.y = y;
    this.speed = 0;
  }

  start(speed) { // method expects parameter!
    this.speed = speed;
  }

  display() { // method!
    fill(this.color);
    rect(this.x, this.y, 20, 10);
  }

  move() { // method!
    this.x += this.speed;
    // Wrap x around boundaries
    if (this.x < -20) {
      this.x = width;
    } else if (this.x > width) {
      this.x = -20;
    }
  }
} //end class Car

let rav4;
let charger;
let nova;

function setup() {
  createCanvas(200, 400);
  /* Construct the 3 Cars */
  //constructor expects cColor, x, y
  rav4 = new Car("silver", 100, 300);
  charger = new Car("gold", 0, 200);  
  nova = new Car("blue", 200, 100); 
  nova.doors = 2; //update nova's doors property
  
  console.log("rav4", rav4);
  console.log("charger", charger);
  console.log("nova", nova);
  
  //call start methods of Car instances
  //the start method expects a number for speed
  rav4.start(2.3);
  charger.start(-4);
  nova.start(random(-1, 1));
}

function draw() {
  background("beige");
  
  //display and move all 3 Cars
  rav4.display();
  charger.display();
  nova.display();
  
  rav4.move();
  charger.move();
  nova.move();
}
