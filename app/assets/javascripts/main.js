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



  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    var slideDown = $(".section--bottom")

    if (scroll >= 10) {
      slideDown.addClass("section--scroll");
    } else {
      slideDown.removeClass("section--scroll");
    }
  });


  // Make inline links scroll instead of jump
  $(".js-scroll-to").click(function(e) {
    var offset = $.attr(this, 'href');

    if (offset.indexOf("/") == -1) {
      e.preventDefault();
      $('html, body').animate({
        scrollTop: $(offset).offset().top
      }, 120);
    }
  }); //END inline links scroll

};

$(document).ready(ready);
$(document).on('page:load', ready);