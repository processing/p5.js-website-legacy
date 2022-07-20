var Visualizer = function(){
    this.mSplashSystem = new SplashSystem();
    
    this.windowWidth = window.innerWidth;
    this.windowHeight = window.innerHeight;
    
    this.defaultYpos = Math.random() * -60 - 30;
    
    this.newInterval;
    
    this.droplet;
    this.loc = new p5.Vector(Math.random() * this.windowWidth, this.defaultYpos);
    this.vel = new p5.Vector(0, 0);
    this.rotation = 0;
    this.gravity = new p5.Vector(0, 1);
    this.wind = new p5.Vector(0, 0);  
    this.sizeOffset;
    this.defaultSizeX;
    this.defaultSizeY;
    this.sizeX;
    this.sizeY;
    
    this.isDead = false;
};
    
Visualizer.prototype.setup = function(){
    this.droplet = loadImage("image/droplet.png");
    this.getNewSize();
    this.getGravity();
};

Visualizer.prototype.returnWindowWidth = function(){
    return this.windowWidth;
};

Visualizer.prototype.returnWindowHeight = function(){
    return this.windowHeight;
};

Visualizer.prototype.getNewSize = function(){
    this.sizeOffset = Math.random();
    this.defaultSizeX = this.sizeOffset * 79 / 3 + 5;
    this.defaultSizeY = this.sizeOffset * 116 / 3 + 5;
    this.sizeX = this.defaultSizeX;
    this.sizeY = this.defaultSizeY;
//    this.isDead = false;
};

Visualizer.prototype.getGravity = function(){
    this.gravity.y = 1 * this.sizeX * 0.02 + 0.5;
};

Visualizer.prototype.getNewInterval = function(newInterval){
    this.newInterval = newInterval;
    
    this.setDynamicValues();
}

Visualizer.prototype.setDynamicValues = function(){
//    this.gravity.y = Math.abs(3 - (1 - this.newInterval)) * this.sizeX * 0.02 + 0.5;
    this.gravity.y = Math.abs(1/(this.newInterval*3)) * this.sizeX * 0.02 + 0.5;
    this.wind.x = Math.abs(this.newInterval - 1.0);
}

Visualizer.prototype.detectCol = function(){
    //make droplet drop on certain section of window (from 40% of height to 90% of height)
    if(this.loc.y > Math.random() * this.windowHeight * 0.5 + this.windowHeight * 0.7){
        this.isDead = true;
        
        this.mSplashSystem.reset(this.loc.x, this.loc.y);
        
        this.loc.x = Math.random() * this.windowWidth;
        this.loc.y = this.defaultYpos;
        
        this.vel.y = 0;
        
        this.getNewSize();
    }    
};

Visualizer.prototype.returnTrigger = function(){
    if( this.isDead ){
        this.isDead = false;
        return true; 
    } else {
        return false;
    }
};

Visualizer.prototype.update = function(){
    this.vel.add(this.gravity);
    this.vel.add(this.wind);
    
    this.loc.add(this.vel);
    this.mSplashSystem.render();
    
    this.reCalDynamicValues();
    this.detectCol();
};

Visualizer.prototype.reCalDynamicValues = function(){
    //reset vel's wind
    if(this.vel.x > 0 ){
        this.vel.x -= 0.8;
    } else if(this.vel.x < 0){
        this.vel.x = 0;
    } else if(this.vel.x > 1){
        this.vel.x = 1; //restrict value
    }
    
    //set rotation
    if(this.vel.x > 0.1){
        this.rotation -= 0.5;
        if(this.rotation < -45){
            this.rotation = -45;   
        }
    } else if (this.vel.x < 0.1) {
        this.rotation += 4;
        if(this.rotation > 0){
            this.rotation = 0;   
        }
    }
    
    //reset vel's gravity
    if(this.vel.y > 3){
        this.vel.y -= 0.5;
    } else if (this.vel.y < 0.5){
        this.vel.y = 0.5;
    }
};
    
Visualizer.prototype.draw = function(){
    push();
    {
        translate(this.loc.x, this.loc.y);
        rotate(this.rotation);
        image(this.droplet, 0, 0, this.sizeX, this.sizeY);
    }
    pop();
};
    
    
