<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <script type="text/javascript" src="jquery.min.js.txt"></script>
   <script type="text/javascript">
   var r;
   function dofetch(nam)
   {
	  
	//  alert(nam);
	   $.getJSON("Singledata?na="+nam+"",function(records){
	        // alert(JSON.stringify(records));
	         $("#Ftable").empty();
	         $("#select").html("");
             r=records.eid;      
	         $("#Ftable").html("<tr><td>ID<td>"+records.eid+"</tr>");
	         $("#Ftable").append("<tr><td>Name<td>"+records.Namee+"</td></tr>");
	         $("#Ftable").append("<tr><td>Age<td>"+records.age+"</td></tr>");
	         $("#Ftable").append("<tr><td>Picture<td>"+records.pic+"</td></tr>");
	         $("#Ftable").append("<tr><td>Email Id<td>"+records.email+"</td></tr>"); 
	         $("#Ftable").append("<tr><td>Mobile No.<td>"+records.mob+"</td></tr>");
	         $("#Ftable").append("<tr><td>Address<td>"+records.addr+"</td></tr>");
	         $("#Ftable").append("<tr><td>City<td>"+records.city+"</td></tr>");
	         $("#Ftable").append("<tr><td>State<td>"+records.state+"</td></tr>");
	         $("#Ftable").append("<tr><td>Technical Knowledge<td>"+records.tknow+"</td></tr>");
	         $("#Ftable").append("<tr><td>Expirence<td>"+records.expi+"</td></tr>");
	         $("#Ftable").append("<tr><td>Specilization 1<td>"+records.special1+"</td></tr>");
	         $("#Ftable").append("<tr><td>Specilization 2<td>"+records.special2+"</td></tr>");
	         $("#Ftable").append("<tr><td>Specilization 3<td>"+records.special3+"</td></tr>");
	         $("#Ftable").append("<tr><td>ID Proof Type<td>"+records.idproof+"</td></tr>");
	         $("#Ftable").append("<tr><td>ID Proof Uploaded Data<td>"+records.idbrowse+"</td></tr>");
         });

    }
  
   function doReject()
      {
	  
	      //   alert("hiiiiiiiiiiii");
	        // alert(r);
	        if(confirm('If you reject application is Deleted parmanetly ,Are u sure ?'))
	        	{
	   $.get("Rejectemp?&id="+r+"&btn=delete",function(data,status)
			   {
		      // alert("hloo");
		        $("#output").html(data).addClass("ok");;
			   }); 
	   location.reload();
	        	}
      }
   function doSelected()
   {
	 //  alert("kkkkkkkkk");
	  
   }
   $(document).ready(function()
	{
	$(document).ajaxStart(function(){ $("#wait").show();  });
	$(document).ajaxStop(function(){ $("#wait").hide(); });
	 
	window.onload=dosearchall();
       function dosearchall()
          {
	  
    	  // alert("your choice is detail");
	       $.getJSON('getdata',function(records){
		       //  alert(JSON.stringify(records));
		         $("#table").empty();
		         $("#table").append("<tr class='active'> <th>Employee ID<th>Name <th>Specialiation 1<th>Specialiation 2<th>Specialiation 3<th>Contect No. <th>Detail     </tr>");
		        for(i=0;i<records.length;i++)
			    {
			     row=$("<tr>");
			     row.append("<td>"+records[i].eid+"</td>");
			     row.append("<td>"+records[i].Namee+"</td>");
			     row.append("<td>"+records[i].special1+"</td>");
			     row.append("<td>"+records[i].special2+"</td>");
			     row.append("<td>"+records[i].special3+"</td>");
			     row.append("<td>"+records[i].mob+"</td>");
			     row.append("<td> <input type='button' class='btn btn-default' value='Detail' name='"+records[i].eid+"' id='deta' onclick='dofetch(name)'  data-toggle='modal' data-target='#employee_full_detail' ></td>");
			     $("#table").append(row);
			    }
	   
	           });
	       $( "#selec" ).one( "click", function() {
	    	   $.get("Rejectemp?&id="+r+"&btn=selected",function(data,status)
	    			   {
	    		   $('input[type="button"]').prop('disabled', false);
	    		        $("#select").html(data).addClass("ok");
	    		       
	    		        $("#selec").css("background-color","#CCC3C3");	
	    		       
	    			   });
	       });
	  
          }
       
      
});
    </script>
      <style type="text/css">
       .top{
        background-color:buttonface;
        text-align: center;
        color: activecaption;
        padding-top: 1px;
        padding-bottom: 1px;
        font-weight: bold;
        font-style:italic;
     
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
         .ok{color:#E62A24;; text-decoration: bold; 
      position: absolute;}
    </style>
    
  </head>
  <body>
   
   <form class="navbar navbar-default form-inline " role="search" style="background-image:url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');">
       <div  class="nav "style="margin-left: 500px;">
         <h1 style="color: white;font-size: 30px;margin-left: 75px;margin-top: 10px;" >Applications Checker </h1>
      </div>
  </form>
 
   
    <div class="col-md-12">
    
    <table class="table table-condensed"  id="table">
        
    </table>
    </div>
      <div id="output">
      </div>
     <!-- #employee_full_detail(Window)  -->
 
<div class="modal fade" id="employee_full_detail">
	<div class="modal-dialog"> <!-- for Andhera -->
   		<div class="modal-content" > <!-- modal window-->
        		<div class="modal-header">
                	<button type="button" class="close" data-dismiss="modal">X</button>
                    <span style="color:#00CC33"><h4>Emplyee Full Detail</h4></span>
                </div>
                <div class="modal-body">
                  
                   <table class="table table-condensed"  id="Ftable">
        
                   </table>
                   
                </div>
                <div class="modal-footer">
                <div id="select"></div>
                <button type="button" class="btn btn-default"  data-dismiss="modal" onclick=" doReject();">Reject</button>
                <input type="button" class="btn btn-default"  id="selec" value="Selected">
      			</div>
        </div> 
    </div>
</div>
    
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>