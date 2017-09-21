<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <script type="text/javascript" src="jquery.min.js.txt"></script>
  <script type="text/javascript">
  var serid="<%=request.getParameter("serid")%>";
  function checkr()
  {
	  alert("Are You Sure to change the Warranty Record")
  }
	
	function dofetch()
	{	//  alert(serid);
		      $.getJSON("servicepersoncontroller?serid="+serid+"&btn=fetch",function(records){
		    	 // alert(JSON.stringify(records));
		    	  var nu=null;
			        if(records==nu)
			        		{
			        	alert("New Complaint is not coming yet!!!")
			        		}
			        else{
			         $("#table").empty();      
			         var cid=records.CustID;
			         $('#cidmodal').attr('value',cid);
			         $("#table").html("<tr><td>CustomerID<td>"+records.CustID+"</tr>");
			         $("#table").append("<tr><td>Customer Name:<td>"+records.cname+"</tr>");
			         $("#table").append("<tr><td>Product<td>"+records.Product+"</td></tr>");
			         $("#table").append("<tr><td>Product Type<td>"+records.typ+"</td></tr>");
			         $("#table").append("<tr><td>Product Modal<td>"+records.modal+"</td></tr>");
			         $("#table").append("<tr><td>Product Serial Number<td>"+records.serial+"</td></tr>"); 
			         $("#table").append("<tr><td>Problem Description<td>"+records.description+"</td></tr>");
			         
			         $('#pic').attr('src', "project_temp/"+records.pic);
			         
			         $("#table").append("<tr><td>Picture<td><a href='' data-toggle='modal' data-target='#mypic'>"+records.pic+"</a></td></tr>");
			         $("#table").append("<tr><td>Address<td>"+records.address+"</td></tr>");
			         $("#table").append("<tr><td>Mobile Number<td>"+records.mobile+"</td></tr>");
			         $("#table").append("<tr><td>City<td>"+records.city+"</td></tr>");
			         $("#table").append("<tr><td>Complaint Date<td>"+records.currentdate+"</td></tr>");
			         $("#table").append("<tr><td>Warranty Status<td>"+records.warranty+"</td></tr>");  
			        
			         if(records.warranty==="Yes")
			        	 {
			        	 
			        	 $("#ywarranty").attr('checked','true');
			        	 }
			         else
			        	 {
			        	
			        	 $("#nwarranty").attr('checked','true');
			        	 }
			         $('#pic2').attr('src', "project_temp/"+records.wproof);
			         $('#pic3').attr('src', "project_temp/"+records.wproof);
			         $('#wdata').html("<a href='' data-toggle='modal' data-target='#wpic'><span>"+records.wproof+"</span></a>")
			         $("#table").append("<tr><td>Warranty Proof<td><a href='' data-toggle='modal' data-target='#mypic2'>"+records.wproof+"</a></td></tr>");  
			        }
		         });

  }
  
  $(document).ready(function(){
	  $(document).ajaxStart(function(){ $("#wait").show();  });
	  $(document).ajaxStop(function(){ $("#wait").hide(); });
	  
	
		$("#avail").click(doclose);
		function doclose()
		{
			var url=$("#frm1").serialize();
			alert(url);
		
			 $.get("Availcontroller?"+url+"&sid="+serid+"",function(data,status)
					   {
				        //alert("hloo");
				        $("#output").html(data);
				        alert(data);
					   }); 
		}
		
  });
  
  </script>
  <style type="text/css">
     .top
     {
        background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');
        padding-top: 1px;
        padding-bottom: 1px;
        font-weight: bold;
        
        color: white;      
     }
     .tab
     {
       background-color: F7F6ED;
       border: thin;
       height: 530px;
     }
      #wait
        {
	  width:100px; height: 100px;
	  background-image:url(loading.gif);
	  position: absolute;
	  margin-left:40%;
	  margin-top:20%;
	  display: none;
        }
   </style>
  </head>
  <body  onload="dofetch()">
  
   <form class="navbar navbar-default form-inline " role="search" style="background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');">
       <div  class="nav "style="margin-left: 500px;">
         <span class="glyphicon glyphicon-th-list" aria-hidden="true" style="font-size: 45px;color: white;margin-left: -490px;margin-top: 15px;margin-bottom: 15px;"></span><h1 style="color: white;margin-top: -60px;font-size: 45px;margin-left: -70px;" >Current Complaint Board </h1>
      </div>
  </form>
  
  
   <div class="container col-md-8 col-md-offset-2 form-group">
      <form id="frm" class="form-inline">
       
        
         <div class="tab">
        
          <table class="table" id="table">   
         
          </table>
         </div>
         
    <input type="button" class="btn btn-primary" value="Update Status" name="btnstatus" id="btnstatus"style="height: 45px; margin-top: -30px; width: 100%;" data-toggle="modal" data-target="#myModal" /> 
             
     </form>
   </div>
   
   <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Service Person Feedback</h4>
      </div>
      <div class="modal-body">
      <form id="frm1">
       <table class="table">
       <tr><td>Customer ID<td><input type="text" name="cidmodal" id="cidmodal" readonly="readonly" ></tr>
       <tr><td>Task Completion Date <td><input type="date" name="dat" id="dat"></tr>
       <tr><td>Feedback<td><textarea rows="4" cols="50" name="feedarea" id="feedarea" placeholder="Problem description and solution"></textarea></td>
       <tr><td> Charges<td><input type="text" name="charges" id="charges" placeholder="Rs."></<tr>
       
       <tr>
          <td>Under Warranty
          <td> 
          <input type="radio" name="warranty" value="Yes" id="ywarranty" onclick="checkr();">Yes
          <input type="radio" name="warranty" value="No" id="nwarranty" onclick="checkr();">No
      </tr>
      <tr>
      <td>Warranty Pic
      <td id="wdata">
      </tr>
       </table>
       </form>
      </div>
      <div class="modal-footer">
       
        <button type="button" class="btn btn-primary" id="avail" >Update System</button>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="mypic" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    
      <div class="modal-body">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <img src="" id="pic" style="width: 100% "/>
        </div>
    </div>
  </div>
</div>
 <div class="modal fade" id="mypic2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    
      <div class="modal-body">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <img src="" id="pic2" style="width: 100%"/>
    </div>
  </div>
</div>
</div>

 <div class="modal fade" id="wpic" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    
      <div class="modal-body">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <img src="" id="pic3" style="width: 100%"/>
    </div>
  </div>
</div>
</div>



    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
 
  
</html>