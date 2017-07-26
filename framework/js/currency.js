$( document ).ready(function() {
    
    
    
 });
 
function submit_form()
{
    alert('sds');
    $.ajax({
       url: base_url + 'currency/calculate',
       data: {
          format: 'json'
       },
       error: function() {
          $('#info').html('<p>An error has occurred</p>');
       },
       dataType: 'jsonp',
       success: function(data) {
          var $title = $('<h1>').text(data.talks[0].talk_title);
          var $description = $('<p>').text(data.talks[0].talk_description);
          $('#info')
             .append($title)
             .append($description);
       },
       type: 'GET'
    });
}