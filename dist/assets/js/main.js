function toEn() {
  $("#en-btn").removeClass('active');
  $("#en-btn").addClass('disabled');
  console.log("en");
}

function toEs() {
  $("#es-btn").removeClass('active');
  $("#es-btn").addClass('disabled');
  $("#en-btn").removeClass('disabled');
  $("#en-btn").addClass('active');
  console.log("es");
 }