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
     $(document).ready(function(){
     	 $("#btn1").click(dosubitlogs);
   	    function dosubitlogs(){
   		 window.location="Adminprofiledetail.jsp?adid="+adid;
   	   }
     });
     </script>
</head>
<body style="background-color:#D4D3CF ;">
  
<div class="row" align="center" >
    <div class="col-md-10 col-md-offset-1"> 
     
       <br>
      <div class="row">      
               <div class="col-md-6 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                   <img src="img/profilebox.png" alt="profile" width="45px" height="45px" style="margin-top: -15px; "><span  style="font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;"> View Profile</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">You can view and edit your profile here.</p>
                         <a   id="btn1" class="btn btn-default" role="button" style="color: #331616;font-size: 20px ;border-radius:80px 80px 80px 80px;">Click Here</a>
                 </article>
                 </div>
               </div>    
               <div class="col-md-6 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                  <img src="img/flag.png" alt="product" width="45px" height="45px" style="margin-top: -15px;border-radius:80px 80px 80px 80px; "> <span  style="font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;">Product Manager</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">You can view and edit Products from  here.</p>
                         <a  class="btn btn-default" role="button" target="mainbase" href="register_signin.html" style="color: #331616;font-size: 20px;border-radius:80px 80px 80px 80px;">Click Here</a>
                 </article>
                 </div>
               </div>          
      </div>
    
    <!--  -->   
         
      <div class="row">      
               <div class="col-md-6 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                    <img src="img/KYC.png" alt="applications" width="45px" height="45px" style="margin-top: -15px; "><span style="font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;">Employee Selection</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">  You can View Applications set from here.</p>
                         <a class="btn btn-default" role="button"  target="mainbase" href="detailApp.jsp" style="color: #331616;font-size: 20px;border-radius:80px 80px 80px 80px;">Click Here</a>
                 </article>
                 </div>
               </div>    
               <div class="col-md-6 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                  <img src="img/selec.jpg" alt="Selected" width="45px" height="45px" style="margin-top: -15px;border-radius:80px 80px 80px 80px; "> <span style="font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;">Selected Employee</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;"> You can View selected employees from here</p>
                         <a class="btn btn-default" role="button"  target="mainbase" href="selectedForm.jsp"  style="color: #331616;font-size: 20px;border-radius:80px 80px 80px 80px;">Click Here</a>
                 </article>
                 </div>
               </div>          
      </div>
         
          <!--  -->   
         
      <div class="row">      
               <div class="col-md-6 thumbnail" style="background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                    <img src="img/calen.png" alt="calender"  width="45px" height="45px" style="margin-top: -15px;"> <span  style="font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;"> Employee Working Log</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">You can View Employee's working log from here</p>
                         <a class="btn btn-default" role="button"  target="mainbase" href="AdminCheckLog.jsp" style="color: #331616;font-size: 20px;border-radius:80px 80px 80px 80px;">Click Here</a>
                 </article>
                 </div>
               </div>    
               <div class="col-md-6 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                   <img src="img/history.png" alt="history" width="45px" height="45px" style="margin-top: -15px;"> <span style="font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;">Customer History</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;"> You can View records of any Customer based on id</p>
                         <a class="btn btn-default" role="button"  href="#"  style="color: #331616;font-size: 20px;border-radius:80px 80px 80px 80px;">Click Here</a>
                 </article>
                 </div>
               </div>          
      </div>
         
          <!--  -->   
         
      <div class="row">      
               <div class="col-md-6 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                   <img src="img/payout.png" alt="payout" width="45px" height="45px" style="margin-top: -15px;"> <span style="font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;">Payments Records</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;"> You can View whole payment records from here</p>
                         <a class="btn btn-default" role="button"  target="mainbase" href="PaymentRecords.jsp" style="color: #331616;font-size: 20px ;border-radius:80px 80px 80px 80px;">Click Here</a>
                 </article>
                 </div>
               </div>    
               <div class="col-md-6 thumbnail" style="  background-image: url('Pictures/checkimg.jpg');border:solid 3px #331616;border-radius:80px 80px 80px 80px; height: 185px;">
                 <div class="caption">
               
                  <article class="tz-blog-item tz-blog-item-style-3">
                   <span class="glyphicon glyphicon-user" style="margin-top: 13px;font-size: 35px"><a href="#" style="color: #331616;text-decoration: none;"> View Profile</span></a>
                        <p style="font-size: 16px;color: #331616; font-family: Comic Sans MS;padding-top: 10px;">You can view and edit your profile here.</p>
                         <a class="btn btn-default" role="button"   id="custoprof" style="color: #331616;font-size: 20px;border-radius:80px 80px 80px 80px;">Click Here</a>
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