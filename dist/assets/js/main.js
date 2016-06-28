$('#family form').hover(
  function() {
    $('#search_field').css('visibility', 'visible');
    $('#search_field').animate({width: '9.75em'}, 100);
  },
  function() {
    if ($('#search_field').val() === '') {
      closeSearch();
    }
  }
);

$('#family form').focusout(function() {
  closeSearch();
});

$(window).ready(function() {
  if (window.location.pathname.indexOf('/es/') === -1) {
    $('#en-btn').attr('disabled', true);
    $('#es-btn').attr('disabled', false);
  } else {
    $('#en-btn').attr('disabled', false);
    $('#es-btn').attr('disabled', true);
  }
});

function closeSearch() {
  $('#search_field').css('width', '0em');
  $('#search_field').css('visibility', 'hidden');
  console.log($('#search_field').attr('width'));
}


// $('.info').css('display', 'none');

// var currentId;
// var tag;

// $('.start-element').click(function() {

//   var currentId = $(this).attr('id').toString();
//   tag = '.info#' + currentId;

//   if ($(tag).css('display') =='block') {
//     $(tag).css('display', 'none');
//   }
//   else {
//     $(tag).css('display', 'block');
//   }
// });
