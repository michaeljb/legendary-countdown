(function () {
  $('#countdown').submit(function (event) {
    event.preventDefault();
    var $form = $(this);

    $('.result').hide();

    var posting = $.post('/submit', {
      playerCount: $("#player-count").val(),
      scheme: $("#schemes").val(),
      mastermind: $("#mastermind").val(),
      villains: [
        $("#villains1").val(),
        $("#villains2").val(),
        $("#villains3").val(),
        $("#villains4").val(),
        $("#villains5").val()
      ],
      henchmen: $("#henchmen").val()
    });

    posting.done(function (data) {
      var response = JSON.parse(data);

      var deckContents = $.map(response.villain_deck_contents, function (count, card) {
        if (count === 0) {
          return null;
        }

        if (count === 1 && card[card.length - 1] === 's') {
          card = card.slice(0, card.length - 1);
        };

        return "" + count + " " + card;
      }).join(', ');

      $('#maximum-winning-turn .value').text(response.max_win_turn);
      $('#villain-deck-turns .min').text(response.villain_deck_empty.min);
      $('#villain-deck-turns .max').text(response.villain_deck_empty.max);
      $('#villain-deck-contents .value').text(deckContents);

      $('.result').show();
    });
  });
}());
