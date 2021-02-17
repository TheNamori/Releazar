$(document).ready(function() {
  var current = location.pathname.split('/')[1];

  if(!current) {
    $('.home').addClass('active');
  } else {
    $('.nav-link').each(function() {
      if(this.pathname.split('/')[1] == current) {
        $(this).parent().addClass('active');
      }
    })
  }
});
