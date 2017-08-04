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

function setBackgroundImages() {
  imageUrl = $(".actor-profile").find(".image-url").text();
  $.ajax({
    url: "/background_image/" + imageUrl
  })
  .done(function(response) {
    $(".actor-profile").css("background-image", response);
  })
  .fail(function(response) {
    console.log(response.responseText);
  });
}

$(document).ready(function() {
  $(".find-actor").on("submit", formSearchQuery);
});
