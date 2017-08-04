function searchForActor() {
  event.preventDefault();
  console.log("hit the search query");
  $form = $(this);
  $.ajax({
    url: $form.attr("action"),
    method: $form.attr("method"),
    data: $form.serialize()
  })
  .done(function(response) {
    console.log(response);
  })
  .fail(function(response) {
    console.log(response.responseText);
  });
}

$(document).ready(function() {
  $(".find-actor").on("submit", searchForActor);
});
