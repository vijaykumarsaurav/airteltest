


function submitForm() {
    var data  = {
      firstName : $('#firstName').val(),
      secondName : $('#secondName').val(),
      gender : $('input[name=gender]:checked').val(),
      inputAddress1 : $('#inputAddress1').val(),
      inputAddress2 : $('#inputAddress2').val(),
      inputCity : $('#inputCity').val(),
      inputZip : $('#inputZip').val(),
      inputDOB : $('#inputDOB').val(),
      type : 'simpleFormRgister'
    }
   
    $.post("service/app_api.php", data,
    function(data, status){
        if(data.status_code === 'fail'){
          $('#error').html(data.status_message)
        }else{
                var data = data.status_message;
                        var str = '';
                    if(data && data.length){

                    for(var i=0; i< data.length; i++){


                                str += '<tr>'; 
                                str += '<td>'+ data[i].firstname+ '</td>'; 
                                 str += '<td>'+ data[i].lastname+ '</td>'; 
                                 str += '<td>'+ data[i].gender+ '</td>'; 
                                 str += '<td>'+ data[i].city+ '</td>'; 
                                 str += '<td>'+ data[i].address1+ '</td>'; 
                                 str += '<td>'+ data[i].address2+ '</td>'; 
                                 str += '<td>'+ data[i].zip+ '</td>'; 
                                str += '</tr>'; 
                    

                    } 
                    
                }


                $('#showdata').html(str);
                        
          //window.location.href = "home.html"
        }
    });
  
   
 } 