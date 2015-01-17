function Game() {
  "use strict";
  var me = this;
  var throw_service_url = $(".choices").data("service");

  this.init = function() {
    $(document).on("click","a.game-on", $.proxy(me.throw,me));
    $("#results").hide();
  }

  this.throw = function(e){
    var choice = $(e.target).parent("a").data("choice");
    var ajax = $.post(throw_service_url,{player_choice: choice});
    ajax.done(function(data) {
      $("#results").fadeIn();
      $("#playerChoice").html(choice);
      $("#computerChoice").html(data.computer_choice);
      $("#gameResult").html(data.result);
    })
  }
}
