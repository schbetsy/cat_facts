var get_cf_response = function(msg) {
  $.post("/user_input", {"message": msg}, function(response){
    $("#message_history").append(response);
  });
};

var post_user_message = function(msg) {
  $("#message_history").append("<li class='usr'>"+msg+"</li>");
};

var get_message = function() {
  msg = $("#message").val();
  $("#message").val("");
  return msg;
};

$(document).ready(function() {
  $('#user_input').submit(function(event){
    event.preventDefault();
    var msg = get_message();
    post_user_message(msg);
    get_cf_response(msg);
  });
});
