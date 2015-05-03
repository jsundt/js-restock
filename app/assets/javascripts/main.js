/*
 * Ready function.
 * Because we're using turbolinks, all js should sit in here.
 */
ready = function() {

  $('.js-restock').click(function() {
    if ($(this).children('.icon').attr('class') == 'icon item__icon active') {
      $(this).children('.icon').attr('class', 'icon item__icon');
    } 
    else {
      $(this).children('.icon').attr('class', 'icon item__icon active');
    }
  });


  $('.js-restock').on('ajax:success', function(event, xhr, status, error) {
    $('#notice').append('ajax did stuff! ')
  });

  $('.js-restock').on('ajax:error', function(event, xhr, status, error) {
    $('#notice').append('oh no ajax error! ')
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);