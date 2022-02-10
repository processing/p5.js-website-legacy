//Bob System
function BobSystem(options) {
  var bobs = [],
      bobAmount = 5;

  this.addBob = function(){
    var newBob = new Bob();
    bobs.push(newBob);
  }
  
  this.runBobs = function(){
  	bobs.forEach(this.runBob);
  }

  this.runBob = function(bob, index, bobs) {
  	bob.run(bobs);
  }

  for(var i = bobs.length; i < bobAmount; i++){
    this.addBob();
  }
}