$(document).ready(function(){
  var current = location.pathname;
  $('.nav-link').each(function(){
      if(this.pathname == current){
          $(this).parent().addClass('active');
      };
  })
});
