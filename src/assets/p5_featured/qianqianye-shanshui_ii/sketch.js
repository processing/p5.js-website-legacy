var num = 5;
var mountains = [];

function setup() {
	createCanvas(windowWidth, windowHeight);
	shanShui();
}

function draw() {
	background(255);
	noStroke();
	ellipse(100, 100, 80, 80); //sun

	for (var i = 0; i < mountains.length; i++) {
		mountains[i].show();
	}
}

function shanShui() {
	for (var i = 0; i < num; i++) {
		mountains.push(new curveLine(i));
	 }
}

function curveLine(_index) {
	var index = _index;
	var screen = 2000;
	var screenHeight = 800;
	var base = random (screen/4, screen/2); 
	var start = random (-screen/2, screen/2); 

	this.show = function (){
			var ink = 20;

			var c = color(0, 0, 0,ink);
			fill(c);
    		stroke(c);

			var xoffset = map(mouseX, 0,screen, -100,100) * (index+1) ;

				 for (var x = start; x < base + start; x++) {
				 	var mapLoc = map(x, start, base+start, 0, 1);
				 	var edgePercent = .2;

				 	if(mapLoc< edgePercent){
				 		stroke(0,0,0,(mapLoc*(1/edgePercent))*ink);
				 	}else if(mapLoc> abs(1-edgePercent)){
				 		var inverseLoc = abs(1-mapLoc);
				 		stroke(0,0,0,(inverseLoc*1/edgePercent)*ink);
				 	}

					var nx = map(x, 0, screen, 0, 10);
					var y = screenHeight * (noise(nx+index*10)*.7);
					var xPos = x+ xoffset

					line (xPos, y, xPos, y+(screenHeight-y)/2);
					line (xPos, y, xPos, y+(screenHeight-y)/4);
					line (xPos, y, xPos, y+(screenHeight-y)/8);
					line (xPos, y, xPos, y+(screenHeight-y)/16);	
				 }
	}
}