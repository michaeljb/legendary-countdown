(function () {
  $('#countdown').submit(function (event) {
    event.preventDefault();
    var $form = $(this);

    var posting = $.post('/submit', {
      playerCount: $("#player-count").val(),
      scheme: $("#schemes").val(),
      mastermind: $("#mastermind").val(),
      villains: $("#villains").val(),
      henchmen: $("#henchmen").val()
    });

    posting.done(function (data) {
      $('.result').text(data);
      $('.result').show();
    });
  });
}());
