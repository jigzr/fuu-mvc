var url_request = "http://localhost/yard_bio/";
let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
scanner.addListener('scan', function (content) {
  var user = content.split("-");
  $.ajax({
    url: url_request,
    type : 'GET',
    data : {q:2,u:user[0]},
    contentType: "application/x-www-form-urlencoded", 
    beforeSend: function () {
    
    },
    success : function(data){
      if (data == 1) $(".status h1").html("Logged In: <br>"+content);
      else $(".status h1").html("User Not Found");

      var timer = setTimeout(function(){
        $(".status h1").html("Scan QR Code!");
        clearTimeout(timer);
      }, 5000);
    }
  });  
});
Instascan.Camera.getCameras().then(function (cameras) {
  if (cameras.length > 0) {
    scanner.start(cameras[0]);
  } else {
    console.error('No cameras found.');
  }
}).catch(function (e) {
  console.error(e);
});


$(document).ready(function(){

  loadMembers();

  function loadMembers(){
    $.ajax({
      url: url_request,
      type : 'GET',
      data : {q:1,t:'all'},
      contentType: "application/x-www-form-urlencoded", 
      beforeSend: function () {
      
      },
      success : function(data){
        var json = JSON.parse(data);
        var htmlTable = '<table class="table table-striped">';
        htmlTable += "<thead><tr><th>id</th>";
        htmlTable += "<th>name</th>";
        htmlTable += "<th>address</th>";
        htmlTable += "<th>phone</th>";
        htmlTable += "<th>registration date</th>";
        htmlTable += "<th>scheme</th>";
        htmlTable += "<th>status</th>";
        htmlTable += "<th>schedule</th>";
        htmlTable += "<th>start</th>";
        htmlTable += "<th>end</th>";
        htmlTable += "<th>options</th>";
        htmlTable += "</tr></thead><tbody>";
        $.each(json,function(i,e){
          htmlTable += "<tr>";
          htmlTable += "<td>"+ e.id +"</td>";
          htmlTable += "<td>"+ e.name +"</td>";
          htmlTable += "<td>"+ e.address +"</td>";
          htmlTable += "<td>"+ e.contact_number +"</td>";
          htmlTable += "<td>"+ e.registration_date +"</td>";
          htmlTable += "<td>"+ e.scheme +"</td>";
          htmlTable += "<td>"+ e.status +"</td>";
          htmlTable += "<td>"+ e.schedule +"</td>";
          htmlTable += "<td>"+ e.date_start +"</td>";
          htmlTable += "<td>"+ e.date_end +"</td>";
          htmlTable += "<td member_id='"+e.id+"' member_name='"+e.name+"'> <button class='btn btn-danger btn-xs btnQrCode' alt='QR Code'><i class='fa fa-qrcode' aria-hidden='true'></i></button>";
          htmlTable += "<button class='btn btn-success btn-xs'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></td>";
          htmlTable += "</tr>";
        })
        htmlTable += "</tbody></table>";
        $("#tab_content2").html(htmlTable);

        $(".btnQrCode").click(function(){
          $("#qrCodeModal").modal('show');
          // Clear Previous QR Code
          $('#qrcode').empty();
          // Set Size to Match User Input
          $('#qrcode').css({
          'width' : $('.qr-size').val(),
          'height' : $('.qr-size').val()
          })
          $("#qrinfo").html("Member:"+$(this).parent().attr('member_name'));
          // Generate and Output QR Code
          $('#qrcode').qrcode({width: 300,height:300,text:$(this).parent().attr('member_id')+"-"+$(this).parent().attr('member_name')});
        });
        $('.table').DataTable();
      }
    });
  }
});