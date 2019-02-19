/**
 * @class  this class is supposed to make a splash object
 *
 * @constructor
 * @param {float} [_x = 0]                                  from SplashSystem's constructor
 * @param {float} [_y = 0]                                  from SplashSystem's constructor
 * @param {float} [_force = random value between -1 to 1]   from SplashSystem's constructor
 */
var Splash = function(_x, _y, _force){
    /**
	 * to remember the original location when it generates
	 * @type {p5.Vector}
	 */
    this.rootLoc = new p5.Vector(_x, _y);
    
    /**
	 * location of splash object
	 * @type {p5.Vector}
	 */
    this.loc = new p5.Vector(_x, _y);
    
    /**
	 * velocity of splash object, initial y value would be -5 to -10. 
     * x value will be coming from this.force
	 * @type {p5.Vector}
	 */
    this.vel = new p5.Vector(0, Math.random() * -5 - 5);
    
    /**
	 * force for splash object, it will give x value to velocity
	 * @type {p5.Vector}
	 */
    this.force = new p5.Vector(_force, 1);
    
    /**
	 * size for splash object, 1 to 5 
	 * @type {float}
	 */
    this.size = Math.random() * 4 + 1;
    
    /**
	 * if the boolean is true then splash object start to disappear in this.display function
	 * @type {boolean}
     * @type {float} variable for alpha 
	 */
    this.isDead = false;
    this.alpha = 255;
};

/**
 * excute this.update() and this.display()
 */
Splash.prototype.render = function(){
    this.update();
    this.display();
};

/**
 * once splash object is disappeared and droplet hit the ground again then reset every variable to restart 
 * @param {float} for loc.x 
 * @param {float} for loc.y
 * @param {float} for force.x 
 */
Splash.prototype.reset = function(_x, _y, _force){
    this.rootLoc = new p5.Vector(_x, _y);
    this.loc = new p5.Vector(_x, _y);
    this.vel = new p5.Vector(0, Math.random() * -5 -5);
    this.force = new p5.Vector(_force, 1);
    this.size = Math.random() * 4;
    this.isDead = false;
    this.alpha = 255;
};

/**
 * update this object
 * detect this object is dead or not 
 */
Splash.prototype.update = function(){
    this.vel.add(this.force);
    this.loc.add(this.vel);
    
    this.force.x = 0;
    
    if(this.loc.y > this.rootLoc.y){
        this.isDead = true;
    }
     
};

/**
 * display this object
 * when this object is dead, this object starts to disappear
 */
Splash.prototype.display = function(){
    noStroke();
    
    if(!this.isDead){
        fill(51, 51, 51);
    } else {
        fill(51, 51, 51, this.alpha);
        this.alpha -= 60;
        
        if(this.alpha < 0){
            this.alpha = 0;
        }
    }
    
    ellipse(this.loc.x, this.loc.y, this.size, this.size);
};
