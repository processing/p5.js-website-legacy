var glowing, walkingLeft, walkingRight;
var sun, sir;
var trees = [];

function preload() {
	glowing = loadAnimation(loadSpriteSheet("images/sun.png", 255.5, 269.5, 6));
	walkingLeft = loadAnimation(loadSpriteSheet("images/sir-left.png", 232.5, 236, 11));
	walkingRight = loadAnimation(loadSpriteSheet("images/sir-right.png", 232.5, 236, 11));
	for (var i = 0; i < 8; i++) {
		trees[i] = new Tree();
	}
}

function setup() {
	var cnv = createCanvas(windowWidth, windowHeight);
	cnv.style('position', 'absolute');
	sun = createSprite(width / 4, 200);
	sun.addAnimation("glowing", glowing);
	sun.animation.frameDelay = 7;
	sun.scale=0.5;
	for (var i = 0; i < trees.length; i++) {
		trees[i].load(i, windowHeight);
		trees[i].sprite.scale = 0.6;
	}
	sir = createSprite(width / 3, height - 120);
	sir.addAnimation("walking left", walkingLeft);
	sir.addAnimation("walking right", walkingRight);
	sir.animation.frameDelay = 5;
	sir.scale=0.8;
}

function draw() {
	background(255);
	drawSprites();
	trees.forEach(function(tree){
		tree.update(windowWidth);
	});
	if (mouseX > width / 2) {
		sir.changeAnimation("walking right");
		sir.rotation = 10;
		trees.forEach(function(tree){
			tree.move("right", windowWidth);
		});
	} else {
		sir.changeAnimation("walking left");
		sir.rotation = -10;
		trees.forEach(function(tree){
			tree.move("left", windowWidth);
		});
	}
}
function windowResized(){
	resizeCanvas(windowWidth, windowHeight);
}