var SplashSystem = function(){
    this.mSplashes = [];
    
    this.randomForce = Math.random() * 2 - 1;
    
    this.mSplashesNum = 2;
    for(var i = 0; i < this.mSplashesNum; i++){
        this.mSplashes[i] = new Splash(0, 0, this.randomForce );
    }
};

SplashSystem.prototype.reset = function(_x, _y){
    for(var i = 0; i < this.mSplashesNum; i++){
        this.randomForce = Math.random() * 2 - 1;
        this.mSplashes[i].reset(_x, _y, this.randomForce);
    }
};

SplashSystem.prototype.render = function(){
    for(var i = 0; i < this.mSplashesNum; i++){
        this.mSplashes[i].render();
    }
};