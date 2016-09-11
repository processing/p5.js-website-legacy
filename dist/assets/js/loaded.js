// =================================================
// Google Analytics
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-53383000-1', 'auto');
ga('send', 'pageview');

// =================================================
// set tagline
var path = window.location.pathname;
var taglines = document.getElementsByClassName('tagline'); //divsToHide is an array

console.log(path, taglines.length)
console.log('hi')
if (path !== '/' && path.length === 4) { // index
  var taglineInd = Math.floor(Math.random(6));

  for(var i = 0; i < taglines.length; i++){
    //if (i === taglineInd) {
      taglines[i].style.display = 'block';
    // } else {
    //   taglines[i].style.display = 'none';
    // }
  }
}

// =================================================
// disable i18n for now
// @TODO remove on i18n launch
var buttons = document.getElementById('i18n-btn');
// if (window.location.hostname === 'p5js.org') {
//   buttons.parentNode.removeChild(buttons);
// } else {
  buttons.style.display = 'block';
// }