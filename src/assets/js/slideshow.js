var slideIndex = 0;
carousel();

function carousel() {
  var x = $("#slideshow div");
  for (var i = 0; i < x.length; i++) {
    x[i].style.height = "0";
    x[i].style.opacity = "0";
  }
  slideIndex++;
  if (slideIndex > x.length) {slideIndex = 1} 
  x[slideIndex-1].style.height = "400"; 
  x[slideIndex-1].style.opacity = "1";
  setTimeout(carousel, 4000);
}
