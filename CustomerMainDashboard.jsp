
 
     

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
     
     var cusid="<%=request.getParameter("cuid") %>";
     function alldata()
     {
    	 $.getJSON("Custfetchdata?cusid="+cusid, function(records){
    			    JSON.stringify(records);
    				$("#custname").html(""+records.cusid+""); 
    			    $('#samplei').attr('src', "customerpics/"+records.custpic);
    			    $('#iframed').attr('src', 'Customerfrontdiv.jsp?cuid='+cusid);
    		});
    
     }
     $(document).ready(function(){
    	 
    	window.onload=diableback();
  	   function diableback(){
  		   window.history.forward();
  		 alldata();
  	   }
  	   
  	   window.onpageshow=function (evt){
  		   if(evt.persisted){
  			   diableback();
  		   }
  	   }
    	
    	 $("#custoprofside").click(doprof);
    	 function doprof(){
    		 $("#custoprofside").attr('href','custmorprofile.jsp?cuid='+cusid);
    		
    	 }
    	 
    	$("#complaintsise").click(docomplaintsise);
   	 function docomplaintsise(){
		 $("#complaintsise").attr('href','complaintformhtml.jsp?cuid='+cusid);
		
	     } 
	     
	     $("#complaintsidelog").click(docomplaint);
	   	 function docomplaint(){
			 $("#complaintsidelog").attr('href','Customer_Comlaint_Log_History.jsp?cuid='+cusid);
			
		     } 
	   	 $("#sout").click(dosignout);
	   	 function dosignout(){
	   		
	   		//window.history.forward();
	   		//function noBack() {  }
	   		 window.location="thankspage.jsp";
	   		// location.reload(true);
	   		//window.location="CustomerLogin.jsp";
	   	 //location.reload(true);
	   		
	   	 }
     });
     
     </script>
     <style type="text/css">

.btn1
	{
		background-color:#331616;  
		width:200px;
		height:100px;
		color:#ffffff;
		float:left;padding:35px;
		margin-left:60px; 
	    margin-top:90px; 
		
		text-align:center; 
		font-family:Comic Sans MS;
		font-size:25px;
		/*border:3px #001100 solid;*/
		border-right:5px #330807 solid;
		border-bottom:7px #330909 solid;
		/*border-radius:20px;*/
		border-radius:0px 50px 0px 50px;
		transition:ease all .2s;
	}
	.btn1:hover
	{
		cursor:pointer;
		color:#ffffff;
		background-color:#331616;
		border-right:5px #331515 solid;
		border-bottom:7px #331515 solid;
		/*border-radius:20px;*/
		border-radius:50px 0px 50px 0px;
		transition:ease all .2s;
	}
	.btn1:active
	{	border-bottom:1px #330909 solid;
		transform:translate(5px,5px);
		
	}
	
	.btn2
	{
		background-color:#331616;  
		width:200px;
		height:100px;
		color:#ffffff;
		float:left;padding:40px;
		margin-left:60px; 
	    margin-top:100px; 
		
		text-align:center; 
		/*border:3px #001100 solid;*/
		border-right:5px #330807 solid;
		border-bottom:7px #330909 solid;
		/*border-radius:20px;*/
		border-radius:0px 50px 0px 50px;
		transition:ease all .2s;
	}
	.btn2:hover
	{
		cursor:pointer;
		color:#ffffff;
		background-color:#331616;
		border-right:5px #331515 solid;
		border-bottom:7px #331515 solid;
		/*border-radius:20px;*/
		border-radius:50px 0px 50px 0px;
		transition:ease all .2s;
	}
	.btn2:active
	{	border-bottom:1px #A00 solid;
		transform:translate(5px,5px);
		
	}
</style>  
</head>
 <body >
  <!-- navbar -->
<nav class="navbar navbar-inverse" style=" background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); ">
   <div class="container-fluid">
      <div class="navbar-header">
          <a class="navbar-brand" href="#" style="font-size: 21px; margin-top: 20px;"><span id="custname" style="font-size: 28px;"></span> Dashboard</a>
      </div>
      <div  class="nav "style="text-align: center;">
         <h1 style="color: white;margin-top: 20px;" >Automation Services</h1>
      </div>
      
      <div class="nav navbar-nav navbar-right">
         <li></span><form action="Testing"><input type="submit" value="Signout" name="signout" id="sout"></form></li>
      </div>
   </div>
</nav>
<!--left side data  -->
<div class="row">
    <div class="col-lg-2" style="background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); height: 650px">
       <br><br>
          <img src="Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg" alt="Customerpic" class="img-thumbnail img-circle" width="200px" height="200px" id="samplei" style="border: solid #B7B7B1;margin-left: 18px;">
       <br><br><br>
       <a href="" target="page" style="color: white;font-size: 25px;font-family: Comic Sans MS;padding-left: 40px" id="custoprofside">View Profile</a>
       <br><br><br>
       <a href="" target="page"style="color: white;font-size: 25px;font-family: Comic Sans MS;padding-left: 30px" id="complaintsise">Complaint Box</a><br><br><br>
       <a href="" target="page"style="color: white;font-size: 25px;font-family: Comic Sans MS;padding-left: 30px" id="complaintsidelog">Complaints Log</a>
    </div> 
    <div class="col-sm-10" >
       <iframe name="page" src="" width="100%" height="650"   overflow-y:hidden; scrolling="yes" style="margin-right: 20px;" id="iframed"></iframe>
    </div>    
 </div>
 <div class="row">
      <div class="col-md-4 col-md-offset-5 " >
                    <span class=" navbar-brand copyright" style="margin: 1px;">Copyright &copy; Paras Kohli</span>
      </div>
</div>
<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>