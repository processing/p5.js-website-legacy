
var Player = function(){
    this.noise;
    this.feedbackDelay;
    
    this.obj = {};

    this.newInterval = 1.0;

    //load players
    this.rain01 = new Tone.Player("samples/rain01.wav").toMaster();
    this.rain02 = new Tone.Player("samples/rain02.wav").toMaster();
    this.rain03 = new Tone.Player("samples/rain03.wav").toMaster();
    this.rain04 = new Tone.Player("samples/rain04.wav").toMaster();
    this.rain05 = new Tone.Player("samples/rain05.wav").toMaster();
    
    //get players to array
    this.rains = [this.rain01, this.rain02, this.rain03, this.rain04, this.rain05];
    
    //keystroke
    this.keyReturn = new Tone.Player("samples/keyReturn.wav").toMaster();
    this.keySpace = new Tone.Player("samples/keySpace.wav").toMaster();
    this.keyStroke = new Tone.Player("samples/keyStroke.wav").toMaster();
    
    //delay
    this.feedbackDelay = new Tone.PingPongDelay("16n");
};

Player.prototype.whiteNoise = function()
{
    //declare white noise 
    this.noise = new Tone.Noise("white");
    this.noise.volume.value = -35;

    //excute noise
    this.noise.toMaster();
    this.noise.start();
};

Player.prototype.preSetting = function()
{
    //set retrigger 
    this.rain01.retrigger = true;
    this.rain02.retrigger = true;
    this.rain03.retrigger = true;
    this.rain04.retrigger = true;
    this.rain05.retrigger = true;

    this.keyReturn.retrigger = true;
    this.keySpace.retrigger = true;
    this.keyStroke.retrigger = true;

    //set master 'volume' and 'fadetime'
    // Tone.Master.setVolume(0, 0);
    this.keyReturn.volume.value = -15;
    this.keySpace.volume.value = -5;
    this.keyStroke.volume.value = -15;
    
    //set delay
    this.feedbackDelay.toMaster();	
    //60% feedback
    this.feedbackDelay.feedback.value = 0.3;
    this.feedbackDelay.wet.value = 0.03;
    //player
    this.rain01.connect(this.feedbackDelay);
    this.rain02.connect(this.feedbackDelay);
    this.rain03.connect(this.feedbackDelay);
    this.rain04.connect(this.feedbackDelay);
    this.rain05.connect(this.feedbackDelay);
    //noise
    this.noise.connect(this.feedbackDelay);
};

Player.prototype.calInterval = function(time){
    this.t = time;
//    console.log("newInterval : " + newInterval + ", time : " + this.t);
    
    this.randRain = Math.floor(Math.random() * this.rains.length);
    this.note = this.rains[this.randRain];

    //connections
    this.note.start(this.t);
//    console.log("cIntv");
    Tone.Transport.setTimeout(this.calInterval.bind(this), this.newInterval);  
};

Player.prototype.play = function()
{   
    // plays with interval	
    // newInterval range would be from 0.15 to 1.00
    Tone.Transport.start();
    Tone.Transport.setTimeout(this.calInterval.bind(this), this.newInterval); 

};

Player.prototype.getNewInterval = function(newInterval){
    this.newInterval = newInterval; 
}

Player.prototype.playKeyReturn = function()
{   
    return this.keyReturn;
};

Player.prototype.playKeySpace = function()
{   
    return this.keySpace;
};

Player.prototype.playKeyStroke = function()
{   
    return this.keyStroke;
};





			
			
			


			

			
