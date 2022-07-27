/* 
 * @name DOM Form Elements
 * @arialabel Light yellow box with “checked” written with form elements such as checking boxes, sliders, and empty text input below
 * @frame 600,400
 * @description contributed by <a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a> <b>How </b>to use p5 DOM form elements to create a slider,
button, checkbox, radio group, select menu, and entry field.<br/>
Functions are created that include: the canvas
setup, checkbox creation with text, text box with text that projects
typed text onto canvas, slider with button, three selections which
project a rectangle in different areas on the canvas depending on
selection, and a drop down menu with font change.
*/

/* global variables */
//p5 DOM form elements
let slider1;
let button1;
let checkbox1;
let radio1;
let select1;
let entry1;

function setup() {
  createCanvas(200, 200);
  background("beige");

  checkbox1 = createCheckbox("Check me");

  createP(); //spacer with <p> tag

  createSpan("What's your name? "); //label for entry1
  // createInput([value], [type])
  // type: "text" (default), "number",
  // "date", "password", "email", etc.
  entry1 = createInput();
  //If text in the entry field changes, call
  //the entryCallback function.
  entry1.changed(entryCallback);

  createP(); //spacer with <p> tag

  //createSlider(min, max, [value], [step])
  slider1 = createSlider(10, 200);

  button1 = createButton("Press me"); //, "pressed");
  //Assign callback fcn for button1
  //when user clicks mouse on it
  button1.mouseClicked(button1Clicked);

  createP(); //spacer with <p> tag

  radio1 = createRadio();

  //.option([value], [contentLabel])
  //If 1 param, it's both content AND
  //value. Values treated as strings.
  radio1.option(1, "cranberries");
  radio1.option(2, "almonds");
  radio1.option(3, "gouda");

  radio1.value("1"); //set init value

  createP(); //spacer with <p> tag

  select1 = createSelect();
  //.option([contentValue],[value])
  //If 1 param, it's both content AND
  //value. Values treated as strings.
  select1.option("Sans-serif");
  select1.option("Serif");
  select1.option("Fantasy");
  //If changed, call select1Changed 
  select1.changed(select1Changed);
}

function draw() {
  //get value from slider 1
  let gray = slider1.value();
  fill(gray);

  //If mouse in corner, turn on checkbox1
  if ((mouseX < width / 3) &&
    (mouseY < height / 3)) {
    checkbox1.checked(true);
  }
  //Is checkbox1 checked? Say so.
  if (checkbox1.checked()) {
    text("CHECKED", 20, 40);
  }

  switch (radio1.value()) {
    //radio value is always a string
    case "1":
      rect(0, 0, width, 50);
      break;
    case "2":
      rect(0, 70, width, 50);
      break;
    case "3":
      rect(0, 140, width, 50);
      break;
  }
}

//callback fcn for button1
function button1Clicked() {
  //reset slider value to 200
  slider1.value(200);
}


//callback fcn for select1
function select1Changed() {
  switch (select1.value()) {
    case "Sans-serif":
      textFont("sans-serif");
      break;
    case "Serif":
      textFont("serif");
      break;
    case "Fantasy":
      textFont("fantasy");
      break;
  }
}

//callback function for entry1
function entryCallback() {
  for (let i = 0; i < 25; i++) {
    text(entry1.value(), random(width),
          random(height));
  }

}

function mouseClicked() {
  console.log("button1?", button1.value());
  console.log("checkbox1?", checkbox1.value());
  //Update .value of either? No visible change
  //to a button or checkbox
  checkbox1.value("Check again");
  button1.value("clicked?");
}

function keyTyped() {
  switch (key) {
    case "r":
      //move slider1 value to 100
      slider1.value(100);
      break;
  }
}