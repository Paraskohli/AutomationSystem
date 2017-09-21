<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
     function dodumb(n)
     {
    	 if(confirm('Are You Sure to Unselect this Person'))
    		 {
    		  $.get("Rejectemp?&id="+n+"&btn=deleteSelected",function(data,status)
    				   {
    			        alert(data);
    				   }); 
    		   location.reload();
    		        	
    		 }
    	 
     }
     function doleave(n)
     {
    	 if(confirm('Are You Sure to Unselect this Person'))
    		 {
    		  $.get("Rejectemp?&id="+n+"&btn=deleteSelected",function(data,status)
    				   {
    			        alert(data);
    				   }); 
    		   location.reload();
    		        	
    		 }
    	 
     }
     
     $(document).ready(function()
    			{
    			$(document).ajaxStart(function(){ $("#wait").show();  });
    			$(document).ajaxStop(function(){ $("#wait").hide(); });
    			 
    			window.onload=dosearchall();
    		       function dosearchall()
    		          {
    			  
    		    	 //  alert("your choice is detail");
    			       $.getJSON('GetSelectedPersondata',function(records){
    				  //       alert(JSON.stringify(records));
    				         $("#table").empty();
    				         $("#table").append("<tr class='active'> <th>Employee ID<th>Name <th>Email ID<th>Specialiation 1 <th>Specialiation 2 <th>Specialiation 3<th>Contect No.<th>Avail<th>Password<th>Holiday Leave<th>Dumb Person</tr>");
    				        for(i=0;i<records.length;i++)
    					    {
    					     row=$("<tr>");
    					     row.append("<td>"+records[i].eid+"</td>");
    					     row.append("<td>"+records[i].Namee+"</td>");
    					     row.append("<td>"+records[i].email+"</td>");
    					     row.append("<td>"+records[i].special1+"</td>");
    					     row.append("<td>"+records[i].special2+"</td>");
    					     row.append("<td>"+records[i].special3+"</td>");
    					     row.append("<td>"+records[i].mob+"</td>");
    					     row.append("<td>"+records[i].avail+"</td>");
    					     row.append("<td>"+records[i].serpass+"</td>");
    					     row.append("<td> <input type='button' class='btn btn-default' value='Leave Person' name='"+records[i].eid+"' id='detaa' onclick='doleave(name)'></td>");
    					     row.append("<td> <input type='button' class='btn btn-default' value='Dumb' name='"+records[i].eid+"' id='deta' onclick='dodumb(name)'></td>");
    					     $("#table").append(row);
    					    }
    			   
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
        font-family: ;
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
        
     .ok{color:red; text-decoration: bold; background-color: green;
      position: absolute;}
     </style>
  </head>
  <body>
    
     <form class="navbar navbar-default form-inline " role="search" style="background-image:url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');">
       <div  class="nav "style="margin-left: 500px;">
         <h1 style="color: white;font-size: 30px;margin-left: 75px;margin-top: 10px;" >Selected Persons </h1>
      </div>
    </form>
  
    <div class="col-md-12">
    
    <table class="table table-condensed"  id="table">
        
    </table>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>