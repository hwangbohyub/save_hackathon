
$(function(){ 
  $('.bt_up').click(function(){ 
    var n = $('.bt_up').index(this);
    var num = $(".num:eq("+n+")").val();
    if (num==9) {
        num = $(".num:eq("+n+")").val(0);
      }
    else {
        num = $(".num:eq("+n+")").val(num*1+1); 
      }
  });
  $('.bt_down').click(function(){ 
    var n = $('.bt_down').index(this);
    var num = $(".num:eq("+n+")").val();
    if (num==0) {
        num = $(".num:eq("+n+")").val(9);
      }
      else{
        num = $(".num:eq("+n+")").val(num*1-1); 
      }
  });
}) 