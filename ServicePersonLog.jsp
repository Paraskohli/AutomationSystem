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
      function detail(cid)
      {
    	  
    	      $.getJSON("GetServicePersonLog?&cid="+cid+"&btn=detail",function(records)
    	   		    {
    	               $("#table").html("<tr class='active'><td>Customer ID:<td>"+records.CustID+"</tr>");
    	               $("#table").append("<tr><td>Customer Name:<td>"+records.cname+"</tr>");
    	               $("#table").append("<tr><td>Product:<td>"+records.Product+"</tr>");
    	               $("#table").append("<tr><td>Product Type:<td>"+records.typ+"</td></tr>");
				       $("#table").append("<tr><td>Product Modal:<td>"+records.modal+"</td></tr>");
				       $("#table").append("<tr><td>Product Serial Number:<td>"+records.serial+"</td></tr>"); 
				       $("#table").append("<tr><td>Problem Description:<td>"+records.description+"</td></tr>");
				       $('#pic').attr('src', "project_temp/"+records.pic);
				         
				       $("#table").append("<tr><td>Picture:<td><a href='' data-toggle='modal' data-target='#mypic'>"+records.pic+"</a></td></tr>");
				       $("#table").append("<tr><td>Address:<td>"+records.address+"</td></tr>");
				       $("#table").append("<tr><td>Mobile Number:<td>"+records.mobile+"</td></tr>");
				       $("#table").append("<tr><td>City:<td>"+records.city+"</td></tr>");
		               $("#table").append("<tr><td>Complaint Date:<td>"+records.currentdate+"</td></tr>");
		               $("#table").append("<tr><td>Completed Task Date:<td>"+records.recievedate+"</td></tr>");
			           $("#table").append("<tr><td>Warranty Status:<td>"+records.warranty+"</td></tr>");  
			           
			           $('#pic2').attr('src', "project_temp/"+records.wproof);
				       $("#table").append("<tr><td>Warranty Proof<td><a href='' data-toggle='modal' data-target='#mypic2'>"+records.wproof+"</a></td></tr>");  
				       $("#table").append("<tr><td>Customer Feedback:<td>"+records.feedback+"</td></tr>");  
				       $("#table").append("<tr><td>Task Charges:<td>"+records.charges+"</td></tr>");  
				       $("#table").append("<tr><td>My Feedback:<td>"+records.feedSperson+"</td></tr>");  
				     
    	   		    
    	   		    });
      }
    $(document).ready(function(){
  	  $(document).ajaxStart(function(){ $("#wait").show(); });
  	  $(document).ajaxStop(function(){ $("#wait").hide(); });
  	  
    	
      });
     

		  function dofetch()
		  {
		 
		  
		$.getJSON("GetServicePersonLog?&txt="+serid+"&btn=data",function(records)
		    {
		 $("#thumb").empty();
		 var go="no";
		       for(i=0;i<records.length;i++)
		    	   {
		    	    if(records[i].feedSperson==go)
		    	    	{
		    	    	
		    	     $("#thumb").append("<div class='row' style='margin-left:80px; float:left;' >"
	   		            	 +"<div class='col-md-12' style='width:350px;'>"
	   		            	   +"<div class='thumbnail'>"
	   		            	     +"<span style='font-size:40px'>Task</span><span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true' style='float: right; font-size:40px;'></span>"
	   		            	      +"<div class='caption'><br>"
	   		                        +"<h4>Customer ID: "+records[i].CustID+"</h4>"
	   		                        +"<h5>Product Name:  "+records[i].Product+"</h5>"
	   		                        +"<h5>Product Type:  "+records[i].typ+"</h5>"
	   		                        +"<h5>Model Name:  "+records[i].modal+"</h5>"
	   		            	        +"<input type='button' value='Detail' class='btn btn-primary' style='width: 80px;' data-toggle='modal' data-target='#myModal' onclick='detail("+records[i].cid+");' >"
	   		            	     +"</div>"
	   		            	   +"</div>"
	   		            	 +"</div>"
	   		            +"</div>")
	   		          
		    	    	}
		    	    else{
		    	    	var a=records[i];
		             $("#thumb").append("<div class='row' style='margin-left:80px; float:left;' >"
		            	 +"<div class='col-md-12' style='width:350px;'>"
		            	   +"<div class='thumbnail'>"
		            	     +"<span style='font-size:40px'>Task</span><span class='glyphicon glyphicon-ok-circle' aria-hidden='true' style='float: right; font-size:40px;'></span>"
		            	      +"<div class='caption'><br>"
		                        +"<h4>Customer ID: "+records[i].CustID+"</h4>"
		                        +"<h5>Product Name:  "+records[i].Product+"</h5>"
		                        +"<h5>Product type:  "+records[i].typ+"</h5>"
		                        +"<h5>Model Name:  "+records[i].modal+"</h5>"
		            	        +"<input type='button' value='Detail' class='btn btn-primary' style='width: 80px;' data-toggle='modal' data-target='#myModal' onclick='detail("+records[i].cid+");'>"
		            	     +"</div>"
		            	   +"</div>"
		            	 +"</div>"
		            +"</div>"
		          
		                 );
		    	    }
		    	   }
		    });
		  } 
    
    </script>
    
    <style type="text/css">
    
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
  <body style="" onload="dofetch()">
  <!-- NavBar  -->
  <form class="navbar navbar-default form-inline " role="search" style="background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');">
       <div  class="nav "style="margin-left: 500px;">
         <span class="glyphicon glyphicon-th-list" aria-hidden="true" style="font-size: 45px;color: white;margin-left: -490px;margin-top: 15px;margin-bottom: 15px;"></span><h1 style="color: white;margin-top: -60px;font-size: 45px;margin-left: -140px;" >Completed and Pending Tasks </h1>
      </div>
       
      
  </form>
  <br><br>
  <div class=" col-md-10 col-md-offset-1" id="thumb" ">
     
  </div> 
   
   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Complaint Full Detail</h4>
      </div>
      <div class="modal-body" >
          <table  class="table" id="table">
          
          </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
        <img src="" id="pic"/>
        </div>
    </div>
  </div>
</div>
 <div class="modal fade" id="mypic2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    
      <div class="modal-body">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <img src="" id="pic2"/>
    </div>
  </div>
</div>
</div>
   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>