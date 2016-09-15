/*

Hastily written scroll to fixed position:

TO DO:

    - needs to not fail on resize of resize after scrolling,
    - and needs to use animate() to add jquery easing

*/

// if (window.matchMedia("min-width:720px").matches) {
//   var elementPosition = $('#menu').offset();
//
//   $(window).scroll(function(){
//     if($(window).scrollTop() > elementPosition.top){
//       var top = Math.round($(window).scrollTop()-elementPosition.top);
//       $('#menu').css({'margin-top': top});
//     } else {
//       $('#menu').css({'margin-top': 0});
//     }
//   });
// }

$(function() {

  var $window           = $(window),
      $sidebar          = $("#menu"),
      sidebarOffset     = $sidebar.offset(),
      $rotationElements = $([
        '#download-page #asterisk-design-element',
        '#reference-page #asterisk-design-element'
      ].join()),
      rotationDegrees   = 0;

  var isWidescreen = function() {
    return window.matchMedia("(min-width: 720px)").matches;
  };

  // Change sidebar position:
  var setSidebarPosition = function() {
    if ($window.scrollTop() > sidebarOffset.top) {
      $sidebar.stop().animate({
        marginTop: $window.scrollTop() - sidebarOffset.top
      });
    } else {
      $sidebar.stop().animate({
        marginTop: 0
      });
    }
  };
  if (isWidescreen() && $window.scrollTop() > sidebarOffset.top) {
    $sidebar.css('margin-top', $window.scrollTop() - sidebarOffset.top);
  }

  // Rotate specific elements:
  var rotateElements = function() {
    rotationDegrees = ($window.scrollTop() / 40) - 21;
    $rotationElements.css({
      '-ms-transform': 'rotate(' + rotationDegrees + 'deg)',
      '-webkit-transform': 'rotate(' + rotationDegrees + 'deg)',
      'transform': 'rotate(' + rotationDegrees + 'deg)'
    });
  };

  $window.scroll(function() {
    if (isWidescreen()) {
      setSidebarPosition();
      rotateElements();
    }
  });
});
