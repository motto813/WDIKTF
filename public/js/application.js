function formSearchQuery() {
  event.preventDefault();
  $form = $(this);
  $.ajax({
    url: $form.attr("action"),
    method: $form.attr("method"),
    data: $form.serialize()
  })
  .done(function(response) {
    $form.hide();
    $("#content-container").append(response);
    setBackgroundImages();
  })
  .fail(function(response) {
    console.log(response.responseText);
  });
}

// function setBackgroundImages() {
//   $(".actor-profile").css("background-image", "url(")
// }

$(document).ready(function() {
  $(".find-actor").on("submit", formSearchQuery);
});
