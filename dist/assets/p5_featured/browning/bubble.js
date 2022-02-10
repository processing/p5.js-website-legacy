function Bubble(x, y) {
	this.x = x;
  this.col = color(141, 115, 243);
  
  this.history = []; /* history */
  
  this.y = y; 
	this.r = 20;
	this.display = function() {
  	fill(this.col);
  	ellipse(this.x, this.y, this.r * 2, this.r * 2);

	}
  this.changeColor = function() {
    this.col = color(random(255));
  }
  this.intersects = function(other) {
  	var d = dist(this.x, this.y, other.x, other.y);
    if (d < this.r + other.r) {     
      return true;
    }else {
      return false; 
    }   
  }
  this.update = function() {
    this.x += random(-5, 5);
    this.y += random(-5, 5);
    
    for (var i = 0; i < this.history.length; i++) {
      this.history[i].x += random(-3, 3);
      this.history[i].y += random(-3, 3);
    }

    var v = createVector(this.x, this.y);
    this.history.push(v); 
    if (this.history.length > 80) {
      this.history.splice(0, 1);
    }
  }
  
  this.show = function() {
   //ellipse(this.x, this.y, 24, 24);
    
    noFill();
    for (var i = 0; i < this.history.length; i++) {
      var pos = this.history[i];
      //fill(255);
      ellipse(pos.x, pos.y, i*1.2, i*1.2);
    	//vertex(pos.x, pos.y);
    }
  	
  }
}