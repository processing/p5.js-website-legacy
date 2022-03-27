/*
 * @name रैंडम गुस्सियन
 * @arialabel पारभासी सफेद वृत्त एक रेखा में कई बार बाएं और दाएं तब तक खींचे जाते हैं जब तक कि वे एक सफेद लकीर बनाने के लिए ओवरलैप नहीं हो जाते
 * @frame 720,400
 * @description यह स्केच यादृच्छिक संख्याओं के गाऊसी वितरण से बंधे x और y स्थानों के साथ दीर्घवृत्त खींचता है।
 * <br><br><small><em>यह उदाहरण <a href="https://processing.org/examples/randomgaussian.html">रैंडम गाऊसी उदाहरण</a> से लिया गया है
 * संसाधन वेबसाइट पर</em></small>
 */

function setup() {
    createCanvas(720, 400);
    background(0);
  }
  
  function draw() {
  
    // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
    let val = randomGaussian();
  
    let sd = 60;                  // Define a standard deviation
    let mean = width/2;           // Define a mean value (middle of the screen along the x-axis)
    let x = ( val * sd ) + mean;  // Scale the gaussian random number by standard deviation and mean
  
    noStroke();
    fill(255, 10);
    ellipse(x, height/2, 32, 32);   // Draw an ellipse at our "normal" random location
  }

