window.addEventListener('load', function(event){ 


  // set tagline
  var tagline;
  var path = window.location.pathname;

  if (strpos(path, "download") !== false) {
    tagline = "Processing fun times JavaScript quirkiness";
  } else if (strpos(path, "get") !== false) {
    tagline = "Processing simplicity times JavaScript flexibility";
  } else if (strpos(path, "reference") !== false || strpos($path, "libraries") !== false) {
    tagline = "Processing intuition times JavaScript power";
  } else if (strpos(path, "learn") !== false) {
    tagline = "Processing creativity times JavaScript dynamism";
  } else if (strpos(path, "community") !== false) {
    tagline = "Processing community times JavaScript community";
  } else {
    tagline = "the power of Processing times the reach of JavaScript";
  }

  if (tagline) {
    var tag = document.getElementById('tagline');
    tag.innerHTML = tagline;
  }
  
  Prism.plugins.NormalizeWhitespace.setDefaults({
    'remove-trailing': true,
    'left-trim': true,
    'right-trim': true,
    'remove-indent': true
  });


});