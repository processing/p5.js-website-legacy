// Ported by Sarah Groff-Palermo (github: @sarahgp)
// With help from http://bl.ocks.org/mbostock/4060366 & the p5/D3
// cookbook (http://sciutoalex.github.io/p5-D3-cookbook/recipes-beginner/voronoi/)

var c, width, height, polydraw, colorArr, vertices, voronoi, polygons;

var iOS = (navigator.userAgent.match(/(iPad|iPhone|iPod)/g) ? true : false),
    body = document.body,
    html = document.documentElement;

function getWidth() {
  return body.clientWidth;
}

function getHeight() {
  return Math.max(body.scrollHeight, body.offsetHeight, 
                    html.clientHeight, html.scrollHeight, html.offsetHeight);
}

function setup() {

  width = getWidth();
  height = getHeight();

  colorMode(HSL);
  c = createCanvas(width, height);
  c.parent('home-sketch-frame');

  colorArr = [color(240, 5, 29, .05),
              color(240, 5, 29, .1),
              color(240, 5, 29, .15),
              color(240, 5, 39, .05),
              color(240, 5, 39, .1),
              color(240, 5, 39, .15),
              color(240, 5, 49, .05),
              color(240, 5, 49, .1),
              color(240, 5, 49, .05)];

  vertices = d3.range(140).map(function(d) {
      return [Math.random() * width, Math.random() * height];
    });

  voronoi = d3.geom.voronoi()
      .clipExtent([[0, 0], [width, height]]);

  polygons = voronoi(vertices);

  polydraw = function() {
    
    stroke(255);

    for (var j = 0, jL = polygons.length; j < jL; j++) {
      
      var singlegon = polygons[j];

      j === 0 ? fill(color(60, 100, 50, 1)) : 
                fill(colorArr[j % colorArr.length]);

      beginShape();

      for (var k = 0, kL = singlegon.length; k < kL; k++){
        vertex(singlegon[k][0], singlegon[k][1]);
      }

      endShape(CLOSE);

    }
  }

  polydraw();

}

// on iOS links become unclickable with movement
if (!iOS) { 
  function mouseMoved() {
    c.clear();
    vertices[0] = [mouseX, mouseY];
    polygons = voronoi(vertices);
    polydraw();
  }
}

function windowResized(){  
  console.log("resize")
  width = getWidth();
  height = getHeight();
  resizeCanvas(width, height);
  voronoi = d3.geom.voronoi()
      .clipExtent([[0, 0], [width, height]]);
  vertices = d3.range(140).map(function(d) {
        return [Math.random() * width, Math.random() * height];
      });
  polygons = voronoi(vertices);
  polydraw();
}