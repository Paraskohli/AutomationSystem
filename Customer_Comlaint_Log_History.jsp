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
   
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="jquery.min.js.txt"></script>
     
     <script type="text/javascript">
     var cusid="<%=request.getParameter("cuid")%>";
     
     function getcomplaintdata()
     {
  	
  	 $.getJSON('Customer_get_history_log?custid='+cusid+'&btn=cust',function(records){
  		 // alert( JSON.stringify(records));
  		  for(i=0;i<records.length;i++)
		    	   {
		    	      $("#table").append("<tr><td>"+records[i].CustID+"<td>"+records[i].Product+"<td>"+records[i].typ+"<td>"+records[i].modal+"<td>"+records[i].serial
		    	    		  + "<td>"+records[i].description + "<td>"+records[i].currentdate+ "<td>"+records[i].mobile+"<td>"+records[i].feedback+"<td>"+records[i].charges
		    	    		  +"<td>"+records[i].warranty+"<td>"+records[i].eid+"<td>"+records[i].feedSperson+"<tr>")	;	    	    
		    	   }
  	 });
     }
     
     </script>  
     <style type="text/css">
     </style>
</head>
<body onload="getcomplaintdata();"   >
<!-- navbar -->
<nav class="navbar navbar-inverse" style=" background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); ">
   <div class="container-fluid">
      
      <div  class="nav "style="margin-left: 400px;">
         <h1 style="color: white;margin-top: 20px;" > All Complaints Detail History</h1>
      </div>
     
   </div>
</nav>

<div class="row col-md-12 " >
    <table class="table table-striped"id="table">
    
    <tr><th>Customer ID<th>Product<th>Product Type<th>Modal<th>Serial No.<th>Description<th>Complaint Date<th>Mobile No.<th>Your Feedback<th>Charges You Pay<th>Warranty<th>Service Person Code<th>Service Person Feedback</tr>
    
    </table>
</div>    
    
    
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>