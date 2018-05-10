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
      finalTop          = 0;
      $rotationElements = $([
        '#download-page #asterisk-design-element',
        '#reference-page #asterisk-design-element'
      ].join()),
      rotationDegrees   = 0;

  var isWidescreen = function() {
    return window.matchMedia("(min-width: 720px)").matches;
  };

  // Calculate what the top for the sidebar should be.
  var getNewTop = function(){
    return Math.max($window.scrollTop() - sidebarOffset.top, 0);
  }

  // Change sidebar position:
  var setSidebarPosition = function(newTop) {
    // Calculate new top if none passed in.
    newTop = newTop || getNewTop();

    // If it is already animating, return. This makes the animation less choppy.
    // It will pick up the final top when the current animation ends.
    finalTop = newTop;
    if ($sidebar.is(':animated')){
      return;
    }

    $sidebar.animate({top: newTop}, { 
      easing: 'linear',
      duration: 100,
      complete: function(){
        // Go again if a new final top has been set since animation started.
        if (newTop != finalTop){
          setSidebarPosition(finalTop);
        }
      }
    });
  };
  
  if (isWidescreen()){
    $sidebar.css('top', getNewTop());
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
