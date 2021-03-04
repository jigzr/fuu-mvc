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
  loadCurrentLogins();

  function loadCurrentLogins(){
    $.ajax({
      url: url_request,
      type : 'GET',
      data : {q:4,t:'today'},
      contentType: "application/x-www-form-urlencoded", 
      beforeSend: function () {
      
      },
      success : function(data){
        var json = JSON.parse(data);
        var htmlTable = '<table class="table table-striped">';
        htmlTable += "<thead><tr>";
        htmlTable += "<th>name</th>";
        htmlTable += "<th>time</th>";
        htmlTable += "</tr></thead><tbody>";
        $.each(json,function(i,e){
          htmlTable += "<tr>";
          htmlTable += "<td>"+ e.name +"</td>";
          htmlTable += "<td>"+ e.log +"</td>";
          htmlTable += "</tr>";   
        })
        htmlTable += "</tbody></table>";
        $("#tab_content1").html(htmlTable);
        $(".total_today").html(json.length);
        $('#tab_content1 .table').DataTable();
      }
    });
    
    $.ajax({
      url: url_request,
      type : 'GET',
      data : {q:4,t:'all'},
      contentType: "application/x-www-form-urlencoded", 
      beforeSend: function () {
      
      },
      success : function(data){
        var json = JSON.parse(data);
        var htmlTable = '<table class="table table-striped">';
        htmlTable += "<thead><tr>";
        htmlTable += "<th>name</th>";
        htmlTable += "<th>time</th>";
        htmlTable += "</tr></thead><tbody>";
        $.each(json,function(i,e){
          htmlTable += "<tr>";
          htmlTable += "<td>"+ e.name +"</td>";
          htmlTable += "<td>"+ e.log +"</td>";
          htmlTable += "</tr>";   
        })
        htmlTable += "</tbody></table>";
        $("#tab_content3").html(htmlTable);
        $(".total_monthly").html(json.length);
        $('#tab_content3 .table').DataTable();
      }
    });      
  }
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
          htmlTable += "<button class='btn btn-success btn-xs btnUpdateUser'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></td>";
          htmlTable += "</tr>";
        })
        htmlTable += "</tbody></table>";
        $(".total_member").html(json.length);
        $("#tab_content2").html(htmlTable);
        $(".btnUpdateUser").click(function(){
          $("#updateUserModal").modal("show");
          var data = $(this).parent().parent();
          var id = data.find("td:eq(0)").html();
          $('#updateUserModal #id').val(data.find("td:eq(0)").html());
          $('#updateUserModal #name').val(data.find("td:eq(1)").html());
          $('#updateUserModal #address').val(data.find("td:eq(2)").html());
          $('#updateUserModal #contact_number').val(data.find("td:eq(3)").html());
          $('#updateUserModal #registration_date').val(data.find("td:eq(4)").html());
          $('#updateUserModal #scheme').val(data.find("td:eq(5)").html());
          $('#updateUserModal #status').val(data.find("td:eq(6)").html());
          $('#updateUserModal #schedule').val(data.find("td:eq(7)").html());
          $('#updateUserModal #date_start').val(data.find("td:eq(8)").html());
          $('#updateUserModal #date_end').val(data.find("td:eq(9)").html());
        });
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
        $('#tab_content2 .table').DataTable();
      }
    });
  }

  $(".btnSubmitAddUser").click(function(){
    $.ajax({
      url: url_request,
      type : 'GET',
      data : {q:3,
        name:$('#addUserModal #name').val(),
        address:$('##addUserModal address').val(),
        registation_date:$('#addUserModal #registation_date').val(),
        status:$('#addUserModal #status').val(),
        contact_number:$('#addUserModal #contact_number').val(),
        scheme:$('#addUserModal #scheme').val(),
        date_start:$('#addUserModal #date_start').val(),
        date_end:$('#addUserModal #date_end').val(),
        schedule:$('#addUserModal #schedule').val()},
      contentType: "application/x-www-form-urlencoded", 
      beforeSend: function () {
      
      },
      success : function(data){
        if (data == 1) {
          alert("Member Added");
          location.reload();
        }   
      } 
  });
});
  $(".btnSubmitUpdateUser").click(function(){
      $.ajax({
        url: url_request,
        type : 'GET',
        data : {q:5,
          id:$('#updateUserModal #id').val(),
          name:$('#updateUserModal #name').val(),
          address:$('#updateUserModal address').val(),
          registation_date:$('#updateUserModal #registation_date').val(),
          status:$('#updateUserModal #status').val(),
          contact_number:$('#updateUserModal #contact_number').val(),
          scheme:$('#updateUserModal #scheme').val(),
          date_start:$('#updateUserModal #date_start').val(),
          date_end:$('#updateUserModal #date_end').val(),
          schedule:$('#updateUserModal #schedule').val()},
        contentType: "application/x-www-form-urlencoded", 
        beforeSend: function () {
        
        },
        success : function(data){
          if (data == 1) {
            alert("Member Updated");
            location.reload();
          }   
        } 
    });
  });
});