function init_translation_form() {

  $('.add_domain_row').click(function(){
    $('.domain_row:hidden:first').find("input[type=text]").val('').end().find("input[type=checkbox]").attr("checked", false).end().slideDown();
    if ($('.domain_row:hidden').length == 0) {
      $(this).hide();
    }
    return false;
  });

  $('.remove_domain_row').click(function(){
    parent = $(this).parent();
    parent.slideUp();
    parent.find("input[type=checkbox]").attr("checked", true);
    if (parent.hasClass("new_domain")) {
      parent.find("input[type=text]").val('');
    }
    $('.add_domain_row').show();
    return false;
  });

};