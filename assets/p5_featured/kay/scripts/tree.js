var twirling, twirlingOver;

function Tree() {
	var twirling = loadAnimation(loadSpriteSheet("images/tree.png", 186, 179.7, 12));
	var twirlingOver = loadAnimation(loadSpriteSheet("images/tree-over.png", 186, 179.7, 12));
	var foodImgs = ["bread", "peach", "ray", "tomato"];
	
	this.load = function(i, vh) {
		this.sprite = createSprite(i * 230, 4 * vh / 5);
		this.sprite.addAnimation("twirling", twirling);
		this.sprite.addAnimation("twirling over", twirlingOver);
	}

	this.update = function(vw) {
		this.sprite.onMouseOver = function() {
			this.changeAnimation("twirling over");
		}
		this.sprite.onMouseOut = function() {
			this.changeAnimation("twirling");
		}
		this.sprite.onMouseReleased = function(){
			var foodBox = document.createElement("div");
			foodBox.className = "draggable";
			foodBox.style.position = "absolute";
			foodBox.style.bottom = "20px";
			foodBox.style.left = getRandomInt(vw) + "px";

			var food = document.createElement("img");
			var foodNum = getRandomInt(foodImgs.length);
			var foodImg = foodImgs[foodNum];
			food.src = "images/" + foodImg + ".png";
			food.style.position = "relative";
			food.style.transformOrigin = "bottom";
			food.style.transform = "rotate(" + getRandomInt(180) +"deg) scale(" + random(0.1,0.3) + ")";
			foodBox.appendChild(food);
			document.body.appendChild(foodBox);

			$(function() {
    			$(".draggable").draggable({scroll:false});
			});

		}

		function getRandomInt(cap){
			return Math.floor(Math.random() * cap);
		}
	}

	this.move = function(direction, vw) {
		if (direction == "right") {
			this.sprite.position.x--;
			if (this.sprite.position.x < 0) {
				this.sprite.position.x = vw;
			}
		}

		if (direction == "left") {
			this.sprite.position.x++;
			if (this.sprite.position.x > vw) {
				this.sprite.position.x = 0;
			}
		}
	}
}