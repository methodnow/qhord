$('body').on('click','.voicing-button',function(){
  $(this).parent().parent().find('.active').removeClass('active');
  $(this).addClass('active');
});
