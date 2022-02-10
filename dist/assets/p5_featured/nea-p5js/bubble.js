function Bubble(d, xp,yp, xs, ys, eText, textw, texth, txx, tyy) {

  this.mass = d;
  this.position = createVector(xp,yp);
  this.velocity = createVector(xs,ys);
  this.acceleration = createVector(0,0);
  this.eText = eText;
  this.tw = textw;
  this.th=texth;
  this.tx=txx;
  this.ty=tyy;
  this.c=color(int(random(255)),int(random(255)),int(random(255)));
  this.tc=255;
  this.dragOffset = createVector(0, 0);
  this.dragging = false;
  this.rollover = false;


  this.applyForce = function(force) {  //**********
    var f = p5.Vector.div(force, this.mass);
    this.acceleration.add(f); //add to force.
  };

  this.update = function() {
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.acceleration.mult(0); // set our acceleration back to zero *************
  };


  this.checkEdges = function() {
    if (this.position.x > width-this.mass/2) {
      this.position.x = width-this.mass/2;
      this.velocity.x *= -1;
    } else if (this.position.x < 0+this.mass/2) {
      this.velocity.x *= -1;
      this.position.x = 0+this.mass/2;
    }
    if (this.position.y > height-this.mass/2) {
      this.velocity.y *= -1;
      this.position.y = height-this.mass/2;
    } else if (this.position.y < 0+this.mass/2) {
      this.velocity.y *= -1;
      this.position.y = 0+this.mass/2;
    }
  };




  this.display = function() {
    noStroke()
    textSize(15);
    ellipseMode(CENTER);
    fill(this.c);
    ellipse(this.position.x, this.position.y, this.mass, this.mass);
    fill(this.tc);
    textAlign(CENTER);
    rectMode(CENTER);
    text(this.eText,this.position.x-this.tx,this.position.y-this.ty,this.tw, this.th);

  };


  this.collide = function(m, n){ //m is each of the mover objects
    //if dist between centers of movers is less than both their radius added -> colliding!
    if(dist(m.position.x,m.position.y,this.position.x,this.position.y)<(m.mass/2+this.mass/2)||dist(n.position.x,n.position.y,this.position.x,this.position.y)<(n.mass/2+this.mass/2)){
      if(this.bang==false){

        var r1=int(random(255));
        var g1=int(random(255));
        var b1=int(random(255));
        this.c=color(r1,g1,b1);
        this.bang =true;
        console.log("colliding");

      }
    }else {
      this.bang =false;
    }
  }

  // The methods below are for mouse interaction
  this.handlePress = function(mx, my) {
    var d = dist(mx, my, this.position.x, this.position.y);
    if (d < this.mass/2) {
      this.dragging = true;
      this.dragOffset.x = this.position.x - mx;
      this.dragOffset.y = this.position.y - my;
    }
  };

  this.handleHover = function(mx, my) {
    var d = dist(mx, my, this.position.x, this.position.y);
    if (d < this.mass/2) {
      this.rollover = true;
    } else {
      this.rollover = false;
    }
  };

  this.stopDragging = function() {
    this.dragging = false;
  };

  this.handleDrag = function(mx, my) {
    if (this.dragging) {
      this.position.x = mx + this.dragOffset.x;
      this.position.y = my + this.dragOffset.y;
    }

  };
}
