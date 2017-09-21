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
     var adid="<%=request.getParameter("adid")%>";
     function fetchdata(){
     	
     	 $.getJSON("Adminfetchalldata?adid="+adid, function(records)
        			 {
        		        
        			    $('#picadmin').attr('src', "Adminpics/"+records.custpic);
        			    $("#adminname").html("  "+records.firstn+" "+records.secondn+"");
        			    $("#adminid1").html("  "+records.cusid+"");
        		     });
     	 $("#srcchange").attr('src','Admindiv.jsp?adid='+adid);
     }
     $(document).ready(function(){
			window.onload=diableback();
		  	   function diableback(){
		  		   window.history.forward();
		  		 fetchdata();
		  	   }
		  	   
		  	   window.onpageshow=function (evt){
		  		   if(evt.persisted){
		  			   diableback();
		  		   }
		  	   }
     });
     </script>
</head>
<body >
  
<nav class="navbar navbar-inverse" style=" background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); ">
   <div class="container-fluid">
    <div class="nav" style="text-align: center;">
<h1 style="color: white;margin-top: 25px;">Admin Dashboard</h1>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
      <li><form action="Testing"><input type="submit" value="Signout"></form></li>
    </ul>
  </div>
</nav>

<div class="row">
    <div class="col-lg-2" style="background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); height: 650px;wid">
    <br><br> <img src="img/adminpic.png" alt="Customerpic" class="img-thumbnail img-circle" width="200px" height="200px" id="picadmin" style="border: solid #B7B7B1;margin-left: 18px;">
    <br><br>
    <table class="table" >
       <tr><td><center style="color: white; font-size: 32px"><span id="adminname">Admin Name</span></center></tr> 
       <tr><td style="border: none;"><center style="color: blue; font-size: 22px"><span id="adminid1">Admin ID</span></center></tr> 
    </table>                 
    </div> 
    <div class="col-md-10">
  <iframe name="mainbase" src="" height="650px" width="100%" frameborder="0"  overflow-y:hidden; scrolling="yes" id="srcchange" ></iframe>
     </div>    
     </div>
     <div class="row">
      <div class="col-md-4 col-md-offset-5 " >
                    <span class=" navbar-brand copyright" style="margin: -1px;">Copyright &copy; Paras Kohli</span>
      </div>
</div>
<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>