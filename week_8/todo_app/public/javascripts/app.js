// $(function() {
//   alert("The page has loaded!");
// });

$(function() {

  $.get("/todos").
    done(function(data) {
      console.log("RECEIVING RESPONSE");
      console.log("DATA", data);
      $(data).each(function (index, todo) {
        var $todo = $("<div class='todo'>" + todo.title + "</div>");
        $(".todosCon").append($todo);
      })
    })



$("#newTodo").on("submit", function(e) {
  var $this = $(this);
  var formData = $this.serialize();
  console.log(formData);
  $.post("/todos", formData).
    done(function(data) {
      console.log(data);
      var $todo = $("<div class='todo'>" + data.title + '</div>');
        $(".todosCon").append($todo);
    });
});

});
