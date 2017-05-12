$(function(){
  var nav = $('#menu');
  $(window).scroll(function(){
    if($(this).scrollTop() > 200){
      nav.addClass('small');
    } else {
      nav.removeClass('small');
    }
  });
});
