function init_translation_form() {
  
  $('.add_domain_row').click(function(){
    $('.domain_row:hidden:first').slideDown('fast');
    if ($('.domain_row:hidden').length == 0) {
      $(this).hide();
    }
    return false;
  });

  $('.remove_domain_row').click(function(){
    $(this).parent().slideUp('fast');
    $('.add_domain_row').show();
    return false;
  });
  
//  if ($('.domain_row:hidden').length == 3) {
//    $('.add_domain_row').trigger('click');
//  }
  
};