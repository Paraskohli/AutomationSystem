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
     
     function getpayments()
       {
    	
    	 $.getJSON('Getallpayments',function(records){
    		  alert( JSON.stringify(records));
    		  for(i=0;i<records.length;i++)
		    	   {
		    	      $("#payments").append("<tr><td>"+records[i].CustID+"<td>"+records[i].Product+"<td>"+records[i].modal+"<td>"+records[i].serial
		    	    		 + "<td>"+records[i].description+"<td>"+records[i].eid+"<td>"+records[i].feedback+"<td>"+records[i].charges
		    	    		 +"<td>"+records[i].feedSperson+"<td>"+records[i].warranty+"<tr>")	;	    	    
		    	   }
    	 });
       }
     
     
      </script>
     <style type="text/css">
     </style>
     
  </head>
  <body onload="getpayments()">
  
  <div class="row"  style="margin-top: 60px;">
     <div class="col-md-10 col-md-offset-1" >
      <table class="table table-striped" id="payments">
      <tr><th>Customer ID<th>Product<th>Modal<th>Serial No.<th>Description<th>Employee ID<th>Customer Feedback<th>Charges<th>Service Person Feedback<th>Warranty</tr>
      </table>
     </div>
  </div>
  
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>