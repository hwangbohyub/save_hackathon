function button_onclick(){
  var count = <%=  @user_counter %>
  if (count >=3) {
    var btn = document.getElementById("chb")
    btn.disabled = true
    alert("5분간 정지됩니다");
    setTimeout("reset_time()",3000);
  }

function reset_time(){
  $btn = $('#chb').attr("disabled",false);
  count = 0;
}

function button_submit(){
  document.getElementById('frm').submit();  
}

function notReload(){
  if((event.ctrlKey == true &&(event.keyCode ==78||event.ketCode ==82))||(event.keyCode ==116)){
    event.keyCode ==0;
    event.cancelBubble = true;
    event.returnValue = false;
    alert("test");
  }
  
}
function no_refresh(event){
  event.preventDefault();   
  $("form").submit(function(e){
         $.ajax({
           method: "GET",   //form에서 method
           url: "/home/test", //form에서 action
           data: { body: $("input[name=test_1]").val() } 
         }).done(function( msg ) {
             // alert( "Data Saved: " + msg );
         });
     })
  return false;     //submit 동기 -> 비동기
}
