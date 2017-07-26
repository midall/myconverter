$( document ).ready(function() {
    
    $( "#cur_value" ).keypress(function(evt){
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        
        if (charCode > 31 && (charCode < 48 || charCode > 57 ) && charCode != 46)
        {
            return false;
        }
        return true;
    });
    
    $( "#swap" ).click(function(){
        
        var val_from = $( "#cur_from option:selected" ).val();
        var val_to = $( "#cur_to option:selected" ).val();
        
        $("#cur_to").val(val_from).change();
        $("#cur_from").val(val_to).change();
    });
    
 });
 
function submit_form()
{
    var cur_value_val = $("#cur_value").val();
    var cur_from_val = $("#cur_from").val();
    var cur_to_val = $("#cur_to").val();
    
    $.ajax({
       url: base_url + "currency/calculate",
       data: { cur_value: cur_value_val, cur_from: cur_from_val, cur_to: cur_to_val },
       error: function() {
          $( "#result").html( "An error has occurred");
       },
       success: function( data ) {
            $( "#result" ).html( data );
       },
       type: "GET"
    });
}