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
     
     var cusid="<%=request.getParameter("cuid")%>";
     $(document).ready(function(){
    	 $("#custoprof").click(docli);
    	 function docli(){
    		
    		 window.location="custmorprofile.jsp?cuid="+cusid;
    	 }
    	 $("#complcust").click(docomp);
    	 function docomp(){
    		
    		 window.location="complaintformhtml.jsp?cuid="+cusid;
    	 }
    	 $("#compl_log").click(docompl_log);
    	 function docompl_log(){
    	
    		 window.location="Customer_Comlaint_Log_History.jsp?cuid="+cusid;
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
	{	border-bottom:1px #330808 solid;
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
	.rad
	{
	border-radius:180px 180px 180px 180px;
	}
	
</style>  
</head>
  <body style="background-color:#D4D3CF ;">
  


<div class="row">
   
    <div class="col-md-8 col-md-offset-2" align="center">  
          <br>    
          <div class="row">      
               <div class="col-md-12 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                   <img src="img/profilebox.png" alt="profile" width="45px" height="45px" style="margin-top: -15px; margin-left: -10px;"> <span  style="margin-top: 13px;font-size: 35px"><a href="#" style="color: #331616;text-decoration: none; margin-left: 5px;"> View Profile</span></a>
                        <p style="font-size: 24px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">You can view and edit your profile here.</p>
                         <a  class="btn btn-default" role="button"  id="custoprof" style="color: #331616;font-size: 20px;border-radius:75px 75px 75px 75px;">Click Here</a>
                 </article>
                 </div>
               </div>          
          </div>
        
         
         <!-- second div -->
         <div class="row">
              <div class="col-md-12 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                   <img src="img/calen.png" alt="calender"  width="45px" height="45px" style="margin-top: -15px;margin-left: 10px;"><span  style="margin-top: 13px;font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;margin-left: -10px;">  Complaint Box</span></a>
                        <p style="font-size: 24px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">You can add complaints here.</p>
                        <a class="btn btn-default" role="button" id="complcust" style="color: #331616;font-size: 20px;border-radius:75px 75px 75px 75px;">Click Here</a>
                  </article>
                 </div>
               </div>
              
                 
          </div>
        
         
        <!-- third div -->
        
         <div class="row">
              <div class="col-md-12 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                    <img src="img/history.png" alt="history" width="45px" height="45px" style="margin-top: -15px;margin-left: -10px;"><span  style="margin-top: 13px;font-size: 35px;margin-right: 5px"><a href="#" style="color: #331616;text-decoration: none;'"> Complaints Log</span></a>
                        <p style="font-size: 24px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">You can review your all complaints here.</p>
                        <a class="btn btn-default" role="button"  id="compl_log"style="color: #331616;font-size: 20px;border-radius:75px 75px 75px 75px;" >Click Here</a>
                  </article>
                 </div>
               </div>
              
                 
          </div>
        
    </div>
         
</div>
     

   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>